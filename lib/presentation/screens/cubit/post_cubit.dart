import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_onboarding/domain/model/post_entity.dart';
import 'package:flutter_onboarding/domain/use_case/post_use_case.dart';
import 'package:flutter_onboarding/extensions/future_extensions.dart';
import 'package:flutter_onboarding/presentation/screens/cubit/post_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class PostCubit extends Cubit<PostUiState> {
  final PostUseCase postUseCase;

  PostCubit({
    required this.postUseCase,
  }) : super(const PostUiState());

  void init() {
    getPosts();
  }

  void getPosts() {
    final postsFuture = postUseCase.getPosts();
    postsFuture.invoke(
      onProgressChanged: (status) => emit(state.copyWith(uiStatus: status)),
      onSuccess: (result) {
        emit(
          state.copyWith(
            posts: result,
          ),
        );
        print("Get posts:${state.posts.length}");
      },
      onError: (exception) => emit(state.copyWith(exception: exception)),
    );

    final favoritePostsDbFuture = postUseCase.getFavoritePostsFromDb();
    favoritePostsDbFuture.invoke(
      onSuccess: (result) =>
          emit(state.copyWith(favoritePosts: result.isNotEmpty ? result : [])),
      onError: (exception) => emit(state.copyWith(exception: exception)),
    );
  }

  void getAdditionalPosts() {
    if (state.isLoadingMorePosts) {
      return;
    }
    emit(state.copyWith(isLoadingMorePosts: true));
    final postsFuture = postUseCase.getAdditionalPostsFromRemote(
      offset: state.posts.length,
    );
    postsFuture.invoke(
      onSuccess: (result) {
        final additionalPosts = state.posts + result;
        postUseCase.saveAdditionalPostsToDb(result);
        emit(state.copyWith(posts: additionalPosts));
        print("Additional posts:${state.posts.length}");
      },
      onError: (exception) => emit(state.copyWith(exception: exception)),
      onComplete: () => emit(state.copyWith(isLoadingMorePosts: false)),
    );
  }

  void toggleIsFavorite(int? postId) {
    _updatePosts(postId);
    _updatePostInDb(postId);
    _addPostsToFavorite();
  }

  PostEntity getSelectedPost(int? postId) =>
      state.posts.firstWhere((element) => element.id == postId);

  void deletePost(PostEntity post) {
    postUseCase.deletePostFromDb(post.id);
    final updatedPosts = List<PostEntity>.from(state.posts)..remove(post);
    final updatedPostsFavorites = List<PostEntity>.from(state.favoritePosts)
      ..remove(post);
    emit(
      state.copyWith(
        posts: updatedPosts,
        favoritePosts: updatedPostsFavorites,
      ),
    );
  }

  void _updatePosts(int? postId) {
    final selectedPost =
        state.posts.firstWhere((element) => element.id == postId);
    final updatedPost =
        selectedPost.copyWith(isFavorite: !selectedPost.isFavorite);
    final updatedPosts = state.posts
        .map((post) => post.id == postId ? updatedPost : post)
        .toList();
    emit(state.copyWith(posts: updatedPosts));
  }

  void _updatePostInDb(int? postId) {
    final selectedPost =
        state.posts.firstWhere((element) => element.id == postId);
    postUseCase.updatePostInDb(selectedPost);
  }

  void _addPostsToFavorite() {
    final favoritePosts =
        state.posts.where((element) => element.isFavorite).toList();
    emit(state.copyWith(favoritePosts: favoritePosts));
  }
}

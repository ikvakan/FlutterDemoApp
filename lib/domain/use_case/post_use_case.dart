import 'package:flutter_onboarding/domain/model/post_entity.dart';
import 'package:flutter_onboarding/domain/repository/post_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PostUseCase {
  final PostRepository postRepository;

  PostUseCase({required this.postRepository});

  Future<List<PostEntity>> getPosts() async {
    return postRepository.getPosts();
  }

  Future<List<PostEntity>> getAdditionalPostsFromRemote({required int offset}) async {
    return postRepository.getAdditionalPostsFromRemote(offset: offset);
  }

  Future<void> saveAdditionalPostsToDb(List<PostEntity> posts) async {
    return  postRepository.saveAdditionalPostsToDb(posts);
  }

  Future<void> updatePostInDb(PostEntity post) async {
    return postRepository.updatePostInDb(post);
  }

  Future<List<PostEntity>> getFavoritePostsFromDb() async {
    return postRepository.getFavoritePostsFromDb();
  }

  Future<void> deletePostFromDb(int? postId) async {
    return postRepository.deletePostFromDb(postId);
  }
}

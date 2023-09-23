import 'package:flutter_onboarding/data/local/dao/post_dao.dart';
import 'package:flutter_onboarding/data/remote/repository/post_api_client.dart';
import 'package:flutter_onboarding/domain/model/post_entity.dart';
import 'package:injectable/injectable.dart';

abstract class PostRepository {
  Future<List<PostEntity>> getPosts();

  Future<List<PostEntity>> getAdditionalPostsFromRemote({int offset});

  Future<void> saveAdditionalPostsToDb(List<PostEntity> posts);

  Future<void> updatePostInDb(PostEntity post);

  Future<List<PostEntity>> getFavoritePostsFromDb();

  Future<void> deletePostFromDb(int? postId);
}

@LazySingleton(as: PostRepository)
class PostRepositoryImpl implements PostRepository {
  final PostApiClient postApiClient;
  final PostDao postDao;

  PostRepositoryImpl({required this.postApiClient, required this.postDao});

  /// Fetches the posts in the database if the database is not empty else return the remote data and save it to the DB
  @override
  Future<List<PostEntity>> getPosts() async {
    final postsInDb = await postDao.getPostsFromDb();
    if (postsInDb.isNotEmpty) {
      return postsInDb;
    }
    final posts = await postApiClient.getPosts();
    await postDao.savePostsToDb(posts); // ?
    return posts;
  }

  @override
  Future<List<PostEntity>> getAdditionalPostsFromRemote({
    int offset = 0,
  }) async {
    final additionalPosts = await postApiClient.getPosts(offset: offset);
    return additionalPosts;
  }

  @override
  Future<void> saveAdditionalPostsToDb(List<PostEntity> posts) async {
    await postDao.saveAdditionalPostsToDb(posts);
  }

  @override
  Future<void> updatePostInDb(PostEntity post) async {
    await postDao.updatePostInDb(post);
  }

  @override
  Future<List<PostEntity>> getFavoritePostsFromDb() async {
    return postDao.getFavoritePostsFromDb();
  }

  @override
  Future<void> deletePostFromDb(int? postId) async {
    if (postId != null) {
      await postDao.deletePostFromDb(postId);
    }
  }
}

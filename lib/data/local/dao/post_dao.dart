import 'package:flutter_onboarding/data/local/dao/isar_service.dart';
import 'package:flutter_onboarding/data/local/model/post_local_dto.dart';
import 'package:flutter_onboarding/domain/model/post_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

@lazySingleton
class PostDao {
  final IsarService isarService;

  PostDao({required this.isarService});

  Future<void> savePostsToDb(List<PostEntity> posts) async {
    try {
      final isar = await isarService.db;
      isar.writeTxn(
        () => isar.postLocalDTOs
            .putAll(posts.map((e) => e.toDbEntity()).toList()),
      );
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> saveAdditionalPostsToDb(List<PostEntity> posts) async {
    try {
      final isar = await isarService.db;
      final postsDb = await getPostsFromDb();
      final additionalPosts = postsDb + posts;
      isar.writeTxn(
        () => isar.postLocalDTOs
            .putAll(additionalPosts.map((e) => e.toDbEntity()).toList()),
      );
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<PostEntity>> getPostsFromDb() async {
    try {
      final isar = await isarService.db;
      final postsDb =
          await isar.postLocalDTOs.where(sort: Sort.desc).anyId().findAll();
      return postsDb.map((e) => e.toEntity()).toList();
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> updatePostInDb(PostEntity post) async {
    try {
      final isar = await isarService.db;
      final selectedPost =
          await isar.postLocalDTOs.filter().idEqualTo(post.id).findFirst();
      if (selectedPost != null) {
        final updatedPost = selectedPost.copyWith(isFavorite: post.isFavorite);
        isar.writeTxn(() => isar.postLocalDTOs.put(updatedPost));
      }
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<PostEntity>> getFavoritePostsFromDb() async {
    try {
      final isar = await isarService.db;
      final favoritePosts = await isar.postLocalDTOs
          .where(sort: Sort.desc)
          .anyId()
          .filter()
          .isFavoriteEqualTo(true)
          .findAll();
      return favoritePosts.map((e) => e.toEntity()).toList();
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> deletePostFromDb(int postId) async {
    try {
      final isar = await isarService.db;
      isar.writeTxn(() => isar.postLocalDTOs.delete(postId));
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }
}

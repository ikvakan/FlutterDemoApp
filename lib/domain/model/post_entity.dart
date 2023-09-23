import 'package:flutter_onboarding/data/local/model/post_local_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_entity.freezed.dart';

@freezed
class PostEntity with _$PostEntity {
  const factory PostEntity({
    required int? id,
    required String? title,
    required String? summary,
    required String? imageUrl,
    @Default(false) bool isFavorite,
  }) = _PostEntity;
}

extension PostEntityExtension on PostEntity {
  PostLocalDTO toDbEntity() {
    return PostLocalDTO(
      id: id,
      title: title,
      summary: summary,
      imageUrl: imageUrl,
      isFavorite: isFavorite,
    );
  }
}

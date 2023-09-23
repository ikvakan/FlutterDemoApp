import 'package:flutter_onboarding/domain/model/post_entity.dart';
import 'package:isar/isar.dart';

part 'post_local_dto.g.dart';

@Collection()
class PostLocalDTO {
  Id? id;
  String? title;
  String? summary;
  String? imageUrl;
  bool? isFavorite;

  PostLocalDTO({
    this.id,
    this.title,
    this.summary,
    this.imageUrl,
    this.isFavorite = false,
  });

  PostLocalDTO copyWith({
    Id? id,
    String? title,
    String? summary,
    String? imageUrl,
    bool? isFavorite,
  }) {
    return PostLocalDTO(
      id: id ?? this.id,
      title: title ?? this.title,
      summary: summary ?? this.summary,
      imageUrl: imageUrl ?? this.imageUrl,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}

extension PostLocalDTOMapper on PostLocalDTO {
  PostEntity toEntity() {
    return PostEntity(
      id: id,
      title: title,
      summary: summary,
      imageUrl: imageUrl,
      isFavorite: isFavorite ?? false,
    );
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'blog_remote_dto.freezed.dart';
part 'blog_remote_dto.g.dart';

@freezed
class BlogRemoteDTO with _$BlogRemoteDTO {
  const factory BlogRemoteDTO({required String title}) = _BlogRemoteDTO;

  factory BlogRemoteDTO.fromJson(Map<String, dynamic> json) =>
      _$BlogRemoteDTOFromJson(json);
}

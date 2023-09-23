
import 'package:flutter_onboarding/data/remote/model/blog_remote_dto.dart';
import 'package:flutter_onboarding/data/remote/model/post_remote_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_remote_dto.freezed.dart';
part 'response_remote_dto.g.dart';


@freezed
class ResponseRemoteDTO with _$ResponseRemoteDTO {
  const factory ResponseRemoteDTO({
    @Default([]) List<PostRemoteDTO> posts,
    BlogRemoteDTO? blog,
  }) = _ResponseRemoteDTO;

  factory ResponseRemoteDTO.fromJson(Map<String, dynamic> json) =>
      _$ResponseRemoteDTOFromJson(json);
}

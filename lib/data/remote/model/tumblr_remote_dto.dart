
import 'package:flutter_onboarding/data/remote/model/response_remote_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tumblr_remote_dto.freezed.dart';
part 'tumblr_remote_dto.g.dart';

@freezed
class TumblrRemoteDTO with _$TumblrRemoteDTO {
  const factory TumblrRemoteDTO({required ResponseRemoteDTO response}) = _TumblrRemoteDTO;

  factory TumblrRemoteDTO.fromJson(Map<String, dynamic> json) => _$TumblrRemoteDTOFromJson(json);
}

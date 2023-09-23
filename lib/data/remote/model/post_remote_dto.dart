
import 'package:flutter_onboarding/data/remote/model/photo_remote_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'post_remote_dto.freezed.dart';
part 'post_remote_dto.g.dart';



@freezed
class PostRemoteDTO with _$PostRemoteDTO {
  const factory PostRemoteDTO({
    int? id,
    String? summary,
   @Default([]) List<PhotoRemoteDTO> photos,
}) = _PostRemoteDTO;

  factory PostRemoteDTO.fromJson(Map<String, dynamic> json) =>
      _$PostRemoteDTOFromJson(json);
}

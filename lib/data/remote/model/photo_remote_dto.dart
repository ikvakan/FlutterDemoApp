
import 'package:flutter_onboarding/data/remote/model/image_remote_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_remote_dto.freezed.dart';
part 'photo_remote_dto.g.dart';

@freezed
class PhotoRemoteDTO with _$PhotoRemoteDTO {
  const factory PhotoRemoteDTO({
   // ignore: invalid_annotation_target
   @JsonKey(name:"original_size") ImageRemoteDTO? image,
}) = _PhotoRemoteDTO;

  factory PhotoRemoteDTO.fromJson(Map<String, dynamic> json) =>
      _$PhotoRemoteDTOFromJson(json);
}

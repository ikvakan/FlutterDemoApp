import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_remote_dto.freezed.dart';
part 'image_remote_dto.g.dart';


@freezed
class ImageRemoteDTO with _$ImageRemoteDTO {
  const factory ImageRemoteDTO({
    String? url,
}) = _ImageRemoteDTO;

  factory ImageRemoteDTO.fromJson(Map<String, dynamic> json) =>
      _$ImageRemoteDTOFromJson(json);
}

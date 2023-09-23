// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_remote_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostRemoteDTO _$$_PostRemoteDTOFromJson(Map<String, dynamic> json) =>
    _$_PostRemoteDTO(
      id: json['id'] as int?,
      summary: json['summary'] as String?,
      photos: (json['photos'] as List<dynamic>?)
              ?.map((e) => PhotoRemoteDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PostRemoteDTOToJson(_$_PostRemoteDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'summary': instance.summary,
      'photos': instance.photos,
    };

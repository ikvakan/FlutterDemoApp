// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_remote_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PhotoRemoteDTO _$$_PhotoRemoteDTOFromJson(Map<String, dynamic> json) =>
    _$_PhotoRemoteDTO(
      image: json['original_size'] == null
          ? null
          : ImageRemoteDTO.fromJson(
              json['original_size'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PhotoRemoteDTOToJson(_$_PhotoRemoteDTO instance) =>
    <String, dynamic>{
      'original_size': instance.image,
    };

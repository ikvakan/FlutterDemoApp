// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_remote_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageRemoteDTO _$ImageRemoteDTOFromJson(Map<String, dynamic> json) {
  return _ImageRemoteDTO.fromJson(json);
}

/// @nodoc
mixin _$ImageRemoteDTO {
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageRemoteDTOCopyWith<ImageRemoteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageRemoteDTOCopyWith<$Res> {
  factory $ImageRemoteDTOCopyWith(
          ImageRemoteDTO value, $Res Function(ImageRemoteDTO) then) =
      _$ImageRemoteDTOCopyWithImpl<$Res, ImageRemoteDTO>;
  @useResult
  $Res call({String? url});
}

/// @nodoc
class _$ImageRemoteDTOCopyWithImpl<$Res, $Val extends ImageRemoteDTO>
    implements $ImageRemoteDTOCopyWith<$Res> {
  _$ImageRemoteDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageRemoteDTOCopyWith<$Res>
    implements $ImageRemoteDTOCopyWith<$Res> {
  factory _$$_ImageRemoteDTOCopyWith(
          _$_ImageRemoteDTO value, $Res Function(_$_ImageRemoteDTO) then) =
      __$$_ImageRemoteDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url});
}

/// @nodoc
class __$$_ImageRemoteDTOCopyWithImpl<$Res>
    extends _$ImageRemoteDTOCopyWithImpl<$Res, _$_ImageRemoteDTO>
    implements _$$_ImageRemoteDTOCopyWith<$Res> {
  __$$_ImageRemoteDTOCopyWithImpl(
      _$_ImageRemoteDTO _value, $Res Function(_$_ImageRemoteDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$_ImageRemoteDTO(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageRemoteDTO implements _ImageRemoteDTO {
  const _$_ImageRemoteDTO({this.url});

  factory _$_ImageRemoteDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ImageRemoteDTOFromJson(json);

  @override
  final String? url;

  @override
  String toString() {
    return 'ImageRemoteDTO(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageRemoteDTO &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageRemoteDTOCopyWith<_$_ImageRemoteDTO> get copyWith =>
      __$$_ImageRemoteDTOCopyWithImpl<_$_ImageRemoteDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageRemoteDTOToJson(
      this,
    );
  }
}

abstract class _ImageRemoteDTO implements ImageRemoteDTO {
  const factory _ImageRemoteDTO({final String? url}) = _$_ImageRemoteDTO;

  factory _ImageRemoteDTO.fromJson(Map<String, dynamic> json) =
      _$_ImageRemoteDTO.fromJson;

  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_ImageRemoteDTOCopyWith<_$_ImageRemoteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

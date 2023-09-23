// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_remote_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhotoRemoteDTO _$PhotoRemoteDTOFromJson(Map<String, dynamic> json) {
  return _PhotoRemoteDTO.fromJson(json);
}

/// @nodoc
mixin _$PhotoRemoteDTO {
// ignore: invalid_annotation_target
  @JsonKey(name: "original_size")
  ImageRemoteDTO? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoRemoteDTOCopyWith<PhotoRemoteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoRemoteDTOCopyWith<$Res> {
  factory $PhotoRemoteDTOCopyWith(
          PhotoRemoteDTO value, $Res Function(PhotoRemoteDTO) then) =
      _$PhotoRemoteDTOCopyWithImpl<$Res, PhotoRemoteDTO>;
  @useResult
  $Res call({@JsonKey(name: "original_size") ImageRemoteDTO? image});

  $ImageRemoteDTOCopyWith<$Res>? get image;
}

/// @nodoc
class _$PhotoRemoteDTOCopyWithImpl<$Res, $Val extends PhotoRemoteDTO>
    implements $PhotoRemoteDTOCopyWith<$Res> {
  _$PhotoRemoteDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageRemoteDTO?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageRemoteDTOCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $ImageRemoteDTOCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PhotoRemoteDTOCopyWith<$Res>
    implements $PhotoRemoteDTOCopyWith<$Res> {
  factory _$$_PhotoRemoteDTOCopyWith(
          _$_PhotoRemoteDTO value, $Res Function(_$_PhotoRemoteDTO) then) =
      __$$_PhotoRemoteDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "original_size") ImageRemoteDTO? image});

  @override
  $ImageRemoteDTOCopyWith<$Res>? get image;
}

/// @nodoc
class __$$_PhotoRemoteDTOCopyWithImpl<$Res>
    extends _$PhotoRemoteDTOCopyWithImpl<$Res, _$_PhotoRemoteDTO>
    implements _$$_PhotoRemoteDTOCopyWith<$Res> {
  __$$_PhotoRemoteDTOCopyWithImpl(
      _$_PhotoRemoteDTO _value, $Res Function(_$_PhotoRemoteDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$_PhotoRemoteDTO(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageRemoteDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhotoRemoteDTO implements _PhotoRemoteDTO {
  const _$_PhotoRemoteDTO({@JsonKey(name: "original_size") this.image});

  factory _$_PhotoRemoteDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PhotoRemoteDTOFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "original_size")
  final ImageRemoteDTO? image;

  @override
  String toString() {
    return 'PhotoRemoteDTO(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotoRemoteDTO &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhotoRemoteDTOCopyWith<_$_PhotoRemoteDTO> get copyWith =>
      __$$_PhotoRemoteDTOCopyWithImpl<_$_PhotoRemoteDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotoRemoteDTOToJson(
      this,
    );
  }
}

abstract class _PhotoRemoteDTO implements PhotoRemoteDTO {
  const factory _PhotoRemoteDTO(
          {@JsonKey(name: "original_size") final ImageRemoteDTO? image}) =
      _$_PhotoRemoteDTO;

  factory _PhotoRemoteDTO.fromJson(Map<String, dynamic> json) =
      _$_PhotoRemoteDTO.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: "original_size")
  ImageRemoteDTO? get image;
  @override
  @JsonKey(ignore: true)
  _$$_PhotoRemoteDTOCopyWith<_$_PhotoRemoteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

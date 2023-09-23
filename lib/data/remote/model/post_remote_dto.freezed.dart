// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_remote_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostRemoteDTO _$PostRemoteDTOFromJson(Map<String, dynamic> json) {
  return _PostRemoteDTO.fromJson(json);
}

/// @nodoc
mixin _$PostRemoteDTO {
  int? get id => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  List<PhotoRemoteDTO> get photos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostRemoteDTOCopyWith<PostRemoteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostRemoteDTOCopyWith<$Res> {
  factory $PostRemoteDTOCopyWith(
          PostRemoteDTO value, $Res Function(PostRemoteDTO) then) =
      _$PostRemoteDTOCopyWithImpl<$Res, PostRemoteDTO>;
  @useResult
  $Res call({int? id, String? summary, List<PhotoRemoteDTO> photos});
}

/// @nodoc
class _$PostRemoteDTOCopyWithImpl<$Res, $Val extends PostRemoteDTO>
    implements $PostRemoteDTOCopyWith<$Res> {
  _$PostRemoteDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? summary = freezed,
    Object? photos = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoRemoteDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostRemoteDTOCopyWith<$Res>
    implements $PostRemoteDTOCopyWith<$Res> {
  factory _$$_PostRemoteDTOCopyWith(
          _$_PostRemoteDTO value, $Res Function(_$_PostRemoteDTO) then) =
      __$$_PostRemoteDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? summary, List<PhotoRemoteDTO> photos});
}

/// @nodoc
class __$$_PostRemoteDTOCopyWithImpl<$Res>
    extends _$PostRemoteDTOCopyWithImpl<$Res, _$_PostRemoteDTO>
    implements _$$_PostRemoteDTOCopyWith<$Res> {
  __$$_PostRemoteDTOCopyWithImpl(
      _$_PostRemoteDTO _value, $Res Function(_$_PostRemoteDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? summary = freezed,
    Object? photos = null,
  }) {
    return _then(_$_PostRemoteDTO(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoRemoteDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostRemoteDTO implements _PostRemoteDTO {
  const _$_PostRemoteDTO(
      {this.id, this.summary, final List<PhotoRemoteDTO> photos = const []})
      : _photos = photos;

  factory _$_PostRemoteDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PostRemoteDTOFromJson(json);

  @override
  final int? id;
  @override
  final String? summary;
  final List<PhotoRemoteDTO> _photos;
  @override
  @JsonKey()
  List<PhotoRemoteDTO> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'PostRemoteDTO(id: $id, summary: $summary, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostRemoteDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, summary, const DeepCollectionEquality().hash(_photos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostRemoteDTOCopyWith<_$_PostRemoteDTO> get copyWith =>
      __$$_PostRemoteDTOCopyWithImpl<_$_PostRemoteDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostRemoteDTOToJson(
      this,
    );
  }
}

abstract class _PostRemoteDTO implements PostRemoteDTO {
  const factory _PostRemoteDTO(
      {final int? id,
      final String? summary,
      final List<PhotoRemoteDTO> photos}) = _$_PostRemoteDTO;

  factory _PostRemoteDTO.fromJson(Map<String, dynamic> json) =
      _$_PostRemoteDTO.fromJson;

  @override
  int? get id;
  @override
  String? get summary;
  @override
  List<PhotoRemoteDTO> get photos;
  @override
  @JsonKey(ignore: true)
  _$$_PostRemoteDTOCopyWith<_$_PostRemoteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

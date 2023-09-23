// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_remote_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BlogRemoteDTO _$BlogRemoteDTOFromJson(Map<String, dynamic> json) {
  return _BlogRemoteDTO.fromJson(json);
}

/// @nodoc
mixin _$BlogRemoteDTO {
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlogRemoteDTOCopyWith<BlogRemoteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogRemoteDTOCopyWith<$Res> {
  factory $BlogRemoteDTOCopyWith(
          BlogRemoteDTO value, $Res Function(BlogRemoteDTO) then) =
      _$BlogRemoteDTOCopyWithImpl<$Res, BlogRemoteDTO>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class _$BlogRemoteDTOCopyWithImpl<$Res, $Val extends BlogRemoteDTO>
    implements $BlogRemoteDTOCopyWith<$Res> {
  _$BlogRemoteDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BlogRemoteDTOCopyWith<$Res>
    implements $BlogRemoteDTOCopyWith<$Res> {
  factory _$$_BlogRemoteDTOCopyWith(
          _$_BlogRemoteDTO value, $Res Function(_$_BlogRemoteDTO) then) =
      __$$_BlogRemoteDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$_BlogRemoteDTOCopyWithImpl<$Res>
    extends _$BlogRemoteDTOCopyWithImpl<$Res, _$_BlogRemoteDTO>
    implements _$$_BlogRemoteDTOCopyWith<$Res> {
  __$$_BlogRemoteDTOCopyWithImpl(
      _$_BlogRemoteDTO _value, $Res Function(_$_BlogRemoteDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$_BlogRemoteDTO(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BlogRemoteDTO implements _BlogRemoteDTO {
  const _$_BlogRemoteDTO({required this.title});

  factory _$_BlogRemoteDTO.fromJson(Map<String, dynamic> json) =>
      _$$_BlogRemoteDTOFromJson(json);

  @override
  final String title;

  @override
  String toString() {
    return 'BlogRemoteDTO(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BlogRemoteDTO &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BlogRemoteDTOCopyWith<_$_BlogRemoteDTO> get copyWith =>
      __$$_BlogRemoteDTOCopyWithImpl<_$_BlogRemoteDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlogRemoteDTOToJson(
      this,
    );
  }
}

abstract class _BlogRemoteDTO implements BlogRemoteDTO {
  const factory _BlogRemoteDTO({required final String title}) =
      _$_BlogRemoteDTO;

  factory _BlogRemoteDTO.fromJson(Map<String, dynamic> json) =
      _$_BlogRemoteDTO.fromJson;

  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_BlogRemoteDTOCopyWith<_$_BlogRemoteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

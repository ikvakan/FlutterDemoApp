// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_remote_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseRemoteDTO _$ResponseRemoteDTOFromJson(Map<String, dynamic> json) {
  return _ResponseRemoteDTO.fromJson(json);
}

/// @nodoc
mixin _$ResponseRemoteDTO {
  List<PostRemoteDTO> get posts => throw _privateConstructorUsedError;
  BlogRemoteDTO? get blog => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseRemoteDTOCopyWith<ResponseRemoteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseRemoteDTOCopyWith<$Res> {
  factory $ResponseRemoteDTOCopyWith(
          ResponseRemoteDTO value, $Res Function(ResponseRemoteDTO) then) =
      _$ResponseRemoteDTOCopyWithImpl<$Res, ResponseRemoteDTO>;
  @useResult
  $Res call({List<PostRemoteDTO> posts, BlogRemoteDTO? blog});

  $BlogRemoteDTOCopyWith<$Res>? get blog;
}

/// @nodoc
class _$ResponseRemoteDTOCopyWithImpl<$Res, $Val extends ResponseRemoteDTO>
    implements $ResponseRemoteDTOCopyWith<$Res> {
  _$ResponseRemoteDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
    Object? blog = freezed,
  }) {
    return _then(_value.copyWith(
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostRemoteDTO>,
      blog: freezed == blog
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as BlogRemoteDTO?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BlogRemoteDTOCopyWith<$Res>? get blog {
    if (_value.blog == null) {
      return null;
    }

    return $BlogRemoteDTOCopyWith<$Res>(_value.blog!, (value) {
      return _then(_value.copyWith(blog: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResponseRemoteDTOCopyWith<$Res>
    implements $ResponseRemoteDTOCopyWith<$Res> {
  factory _$$_ResponseRemoteDTOCopyWith(_$_ResponseRemoteDTO value,
          $Res Function(_$_ResponseRemoteDTO) then) =
      __$$_ResponseRemoteDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PostRemoteDTO> posts, BlogRemoteDTO? blog});

  @override
  $BlogRemoteDTOCopyWith<$Res>? get blog;
}

/// @nodoc
class __$$_ResponseRemoteDTOCopyWithImpl<$Res>
    extends _$ResponseRemoteDTOCopyWithImpl<$Res, _$_ResponseRemoteDTO>
    implements _$$_ResponseRemoteDTOCopyWith<$Res> {
  __$$_ResponseRemoteDTOCopyWithImpl(
      _$_ResponseRemoteDTO _value, $Res Function(_$_ResponseRemoteDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
    Object? blog = freezed,
  }) {
    return _then(_$_ResponseRemoteDTO(
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostRemoteDTO>,
      blog: freezed == blog
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as BlogRemoteDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseRemoteDTO implements _ResponseRemoteDTO {
  const _$_ResponseRemoteDTO(
      {final List<PostRemoteDTO> posts = const [], this.blog})
      : _posts = posts;

  factory _$_ResponseRemoteDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseRemoteDTOFromJson(json);

  final List<PostRemoteDTO> _posts;
  @override
  @JsonKey()
  List<PostRemoteDTO> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  final BlogRemoteDTO? blog;

  @override
  String toString() {
    return 'ResponseRemoteDTO(posts: $posts, blog: $blog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseRemoteDTO &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            (identical(other.blog, blog) || other.blog == blog));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_posts), blog);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseRemoteDTOCopyWith<_$_ResponseRemoteDTO> get copyWith =>
      __$$_ResponseRemoteDTOCopyWithImpl<_$_ResponseRemoteDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseRemoteDTOToJson(
      this,
    );
  }
}

abstract class _ResponseRemoteDTO implements ResponseRemoteDTO {
  const factory _ResponseRemoteDTO(
      {final List<PostRemoteDTO> posts,
      final BlogRemoteDTO? blog}) = _$_ResponseRemoteDTO;

  factory _ResponseRemoteDTO.fromJson(Map<String, dynamic> json) =
      _$_ResponseRemoteDTO.fromJson;

  @override
  List<PostRemoteDTO> get posts;
  @override
  BlogRemoteDTO? get blog;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseRemoteDTOCopyWith<_$_ResponseRemoteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

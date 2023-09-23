// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tumblr_remote_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TumblrRemoteDTO _$TumblrRemoteDTOFromJson(Map<String, dynamic> json) {
  return _TumblrRemoteDTO.fromJson(json);
}

/// @nodoc
mixin _$TumblrRemoteDTO {
  ResponseRemoteDTO get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TumblrRemoteDTOCopyWith<TumblrRemoteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TumblrRemoteDTOCopyWith<$Res> {
  factory $TumblrRemoteDTOCopyWith(
          TumblrRemoteDTO value, $Res Function(TumblrRemoteDTO) then) =
      _$TumblrRemoteDTOCopyWithImpl<$Res, TumblrRemoteDTO>;
  @useResult
  $Res call({ResponseRemoteDTO response});

  $ResponseRemoteDTOCopyWith<$Res> get response;
}

/// @nodoc
class _$TumblrRemoteDTOCopyWithImpl<$Res, $Val extends TumblrRemoteDTO>
    implements $TumblrRemoteDTOCopyWith<$Res> {
  _$TumblrRemoteDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_value.copyWith(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ResponseRemoteDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseRemoteDTOCopyWith<$Res> get response {
    return $ResponseRemoteDTOCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TumblrRemoteDTOCopyWith<$Res>
    implements $TumblrRemoteDTOCopyWith<$Res> {
  factory _$$_TumblrRemoteDTOCopyWith(
          _$_TumblrRemoteDTO value, $Res Function(_$_TumblrRemoteDTO) then) =
      __$$_TumblrRemoteDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResponseRemoteDTO response});

  @override
  $ResponseRemoteDTOCopyWith<$Res> get response;
}

/// @nodoc
class __$$_TumblrRemoteDTOCopyWithImpl<$Res>
    extends _$TumblrRemoteDTOCopyWithImpl<$Res, _$_TumblrRemoteDTO>
    implements _$$_TumblrRemoteDTOCopyWith<$Res> {
  __$$_TumblrRemoteDTOCopyWithImpl(
      _$_TumblrRemoteDTO _value, $Res Function(_$_TumblrRemoteDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$_TumblrRemoteDTO(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ResponseRemoteDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TumblrRemoteDTO implements _TumblrRemoteDTO {
  const _$_TumblrRemoteDTO({required this.response});

  factory _$_TumblrRemoteDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TumblrRemoteDTOFromJson(json);

  @override
  final ResponseRemoteDTO response;

  @override
  String toString() {
    return 'TumblrRemoteDTO(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TumblrRemoteDTO &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TumblrRemoteDTOCopyWith<_$_TumblrRemoteDTO> get copyWith =>
      __$$_TumblrRemoteDTOCopyWithImpl<_$_TumblrRemoteDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TumblrRemoteDTOToJson(
      this,
    );
  }
}

abstract class _TumblrRemoteDTO implements TumblrRemoteDTO {
  const factory _TumblrRemoteDTO({required final ResponseRemoteDTO response}) =
      _$_TumblrRemoteDTO;

  factory _TumblrRemoteDTO.fromJson(Map<String, dynamic> json) =
      _$_TumblrRemoteDTO.fromJson;

  @override
  ResponseRemoteDTO get response;
  @override
  @JsonKey(ignore: true)
  _$$_TumblrRemoteDTOCopyWith<_$_TumblrRemoteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

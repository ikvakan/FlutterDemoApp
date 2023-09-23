// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostUiState {
  List<PostEntity> get posts => throw _privateConstructorUsedError;
  List<PostEntity> get favoritePosts => throw _privateConstructorUsedError;
  UiStatus get uiStatus => throw _privateConstructorUsedError;
  Exception? get exception => throw _privateConstructorUsedError;
  bool get isLoadingMorePosts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostUiStateCopyWith<PostUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostUiStateCopyWith<$Res> {
  factory $PostUiStateCopyWith(
          PostUiState value, $Res Function(PostUiState) then) =
      _$PostUiStateCopyWithImpl<$Res, PostUiState>;
  @useResult
  $Res call(
      {List<PostEntity> posts,
      List<PostEntity> favoritePosts,
      UiStatus uiStatus,
      Exception? exception,
      bool isLoadingMorePosts});
}

/// @nodoc
class _$PostUiStateCopyWithImpl<$Res, $Val extends PostUiState>
    implements $PostUiStateCopyWith<$Res> {
  _$PostUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
    Object? favoritePosts = null,
    Object? uiStatus = null,
    Object? exception = freezed,
    Object? isLoadingMorePosts = null,
  }) {
    return _then(_value.copyWith(
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostEntity>,
      favoritePosts: null == favoritePosts
          ? _value.favoritePosts
          : favoritePosts // ignore: cast_nullable_to_non_nullable
              as List<PostEntity>,
      uiStatus: null == uiStatus
          ? _value.uiStatus
          : uiStatus // ignore: cast_nullable_to_non_nullable
              as UiStatus,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      isLoadingMorePosts: null == isLoadingMorePosts
          ? _value.isLoadingMorePosts
          : isLoadingMorePosts // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostUiStateCopyWith<$Res>
    implements $PostUiStateCopyWith<$Res> {
  factory _$$_PostUiStateCopyWith(
          _$_PostUiState value, $Res Function(_$_PostUiState) then) =
      __$$_PostUiStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PostEntity> posts,
      List<PostEntity> favoritePosts,
      UiStatus uiStatus,
      Exception? exception,
      bool isLoadingMorePosts});
}

/// @nodoc
class __$$_PostUiStateCopyWithImpl<$Res>
    extends _$PostUiStateCopyWithImpl<$Res, _$_PostUiState>
    implements _$$_PostUiStateCopyWith<$Res> {
  __$$_PostUiStateCopyWithImpl(
      _$_PostUiState _value, $Res Function(_$_PostUiState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
    Object? favoritePosts = null,
    Object? uiStatus = null,
    Object? exception = freezed,
    Object? isLoadingMorePosts = null,
  }) {
    return _then(_$_PostUiState(
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostEntity>,
      favoritePosts: null == favoritePosts
          ? _value._favoritePosts
          : favoritePosts // ignore: cast_nullable_to_non_nullable
              as List<PostEntity>,
      uiStatus: null == uiStatus
          ? _value.uiStatus
          : uiStatus // ignore: cast_nullable_to_non_nullable
              as UiStatus,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      isLoadingMorePosts: null == isLoadingMorePosts
          ? _value.isLoadingMorePosts
          : isLoadingMorePosts // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PostUiState implements _PostUiState {
  const _$_PostUiState(
      {final List<PostEntity> posts = const [],
      final List<PostEntity> favoritePosts = const [],
      this.uiStatus = UiStatus.initial,
      this.exception,
      this.isLoadingMorePosts = false})
      : _posts = posts,
        _favoritePosts = favoritePosts;

  final List<PostEntity> _posts;
  @override
  @JsonKey()
  List<PostEntity> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  final List<PostEntity> _favoritePosts;
  @override
  @JsonKey()
  List<PostEntity> get favoritePosts {
    if (_favoritePosts is EqualUnmodifiableListView) return _favoritePosts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoritePosts);
  }

  @override
  @JsonKey()
  final UiStatus uiStatus;
  @override
  final Exception? exception;
  @override
  @JsonKey()
  final bool isLoadingMorePosts;

  @override
  String toString() {
    return 'PostUiState(posts: $posts, favoritePosts: $favoritePosts, uiStatus: $uiStatus, exception: $exception, isLoadingMorePosts: $isLoadingMorePosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostUiState &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            const DeepCollectionEquality()
                .equals(other._favoritePosts, _favoritePosts) &&
            (identical(other.uiStatus, uiStatus) ||
                other.uiStatus == uiStatus) &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.isLoadingMorePosts, isLoadingMorePosts) ||
                other.isLoadingMorePosts == isLoadingMorePosts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_posts),
      const DeepCollectionEquality().hash(_favoritePosts),
      uiStatus,
      exception,
      isLoadingMorePosts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostUiStateCopyWith<_$_PostUiState> get copyWith =>
      __$$_PostUiStateCopyWithImpl<_$_PostUiState>(this, _$identity);
}

abstract class _PostUiState implements PostUiState {
  const factory _PostUiState(
      {final List<PostEntity> posts,
      final List<PostEntity> favoritePosts,
      final UiStatus uiStatus,
      final Exception? exception,
      final bool isLoadingMorePosts}) = _$_PostUiState;

  @override
  List<PostEntity> get posts;
  @override
  List<PostEntity> get favoritePosts;
  @override
  UiStatus get uiStatus;
  @override
  Exception? get exception;
  @override
  bool get isLoadingMorePosts;
  @override
  @JsonKey(ignore: true)
  _$$_PostUiStateCopyWith<_$_PostUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

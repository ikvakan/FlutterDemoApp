import 'package:flutter_onboarding/domain/model/post_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_state.freezed.dart';

enum UiStatus { initial, loading, success, failure }

@freezed
class PostUiState with _$PostUiState {
  const factory PostUiState({
    @Default([]) List<PostEntity> posts,
    @Default([]) List<PostEntity> favoritePosts,
    @Default(UiStatus.initial) UiStatus uiStatus,
    Exception? exception,
    @Default(false) bool isLoadingMorePosts,
  }) = _PostUiState;
}

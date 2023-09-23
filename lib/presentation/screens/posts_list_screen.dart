import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_onboarding/constants/app_routs.dart';
import 'package:flutter_onboarding/constants/app_strings.dart';
import 'package:flutter_onboarding/constants/ui_constants.dart';
import 'package:flutter_onboarding/domain/model/post_entity.dart';
import 'package:flutter_onboarding/presentation/screens/cubit/post_cubit.dart';
import 'package:flutter_onboarding/presentation/screens/cubit/post_state.dart';
import 'package:flutter_onboarding/presentation/widgets/post_list.dart';

class PostListScreen extends StatelessWidget {
  const PostListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PostCubit, PostUiState>(
      listener: (context, state) {
        if (state.uiStatus == UiStatus.failure && state.exception != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Center(child: Text(state.exception.toString())),
            ),
          );
        }
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(AppStrings.postsScreenAppBarTitle),
                  const SizedBox(width: UiConstants.sizedBoxDefaultWidth),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text(
                      state.uiStatus == UiStatus.success
                          ? state.posts.length.toString()
                          : '0',
                    ),
                  ),
                ],
              ),
              actions: [
                PopupMenuButton(
                  onSelected: (result) {
                    if (result == "favorites") {
                      Navigator.pushNamed(context, AppRouts.favorites);
                    }
                  },
                  itemBuilder: (BuildContext context) => [
                    const PopupMenuItem(
                      value: "favorites",
                      child: Text("Favorites"),
                    )
                  ],
                )
              ],
            ),
            body: _buildList(
              context: context,
              items: state.posts,
              isLoadingMorePosts: state.isLoadingMorePosts,
              status: state.uiStatus,
            ),
          ),
        );
      },
    );
  }

  Widget _buildList({
    required BuildContext context,
    required List<PostEntity> items,
    required bool isLoadingMorePosts,
    required UiStatus status,
  }) {
    switch (status) {
      case UiStatus.loading:
        return const Center(child: CircularProgressIndicator());
      case UiStatus.initial:
        return Container();
      case UiStatus.failure:
      case UiStatus.success:
        {
          return PostListView(
            items: items,
            loadAdditionalPosts: () =>
                context.read<PostCubit>().getAdditionalPosts(),
            isLoadingMorePosts: isLoadingMorePosts,
          );
        }
    }
  }
}

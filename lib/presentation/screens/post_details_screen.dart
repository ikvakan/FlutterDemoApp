import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_onboarding/constants/app_strings.dart';
import 'package:flutter_onboarding/presentation/screens/cubit/post_cubit.dart';
import 'package:flutter_onboarding/presentation/screens/cubit/post_state.dart';
import 'package:flutter_onboarding/presentation/widgets/display_post_details.dart';

class PostDetailsScreen extends StatelessWidget {
  const PostDetailsScreen({super.key, required this.postId});

  final String? postId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostCubit, PostUiState>(
      builder: (context, state) {
        final selectedPost =
            context.read<PostCubit>().getSelectedPost(int.parse(postId!));
        return SafeArea(
          child: Scaffold(
            appBar:
                AppBar(title: const Text(AppStrings.detailsScreenAppBarTitle)),
            body: DisplayPostDetails(
              post: selectedPost,
              toggleIsFavorite: () {
                context.read<PostCubit>().toggleIsFavorite(int.parse(postId!));
              },
            ),
          ),
        );
      },
    );
  }
}

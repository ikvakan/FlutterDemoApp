import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_onboarding/constants/app_strings.dart';
import 'package:flutter_onboarding/presentation/screens/cubit/post_cubit.dart';
import 'package:flutter_onboarding/presentation/screens/cubit/post_state.dart';
import 'package:flutter_onboarding/presentation/widgets/post_card.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.favoritesScreenAppBarTitle),
        ),
        body: BlocBuilder<PostCubit, PostUiState>(
          builder: (context, state) {
            if (state.favoritePosts.isEmpty) {
              return const Center(
                child: Text(AppStrings.listIsEmpty),
              );
            }
            return ListView.builder(
              itemCount: state.favoritePosts.length,
              itemBuilder: (context, index) {
                return PostCard(post: state.favoritePosts[index]);
              },
            );
          },
        ),
      ),
    );
  }
}

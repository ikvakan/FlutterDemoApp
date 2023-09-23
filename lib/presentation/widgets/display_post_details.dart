import 'package:flutter/material.dart';
import 'package:flutter_onboarding/constants/app_strings.dart';
import 'package:flutter_onboarding/domain/model/post_entity.dart';
import 'package:flutter_onboarding/presentation/widgets/display_favorites_button_row.dart';
import 'package:flutter_onboarding/presentation/widgets/display_image.dart';
import 'package:flutter_onboarding/presentation/widgets/dsiplay_details_row.dart';

class DisplayPostDetails extends StatelessWidget {
  const DisplayPostDetails({
    super.key,
    required this.post,
    required this.toggleIsFavorite,
  });

  final VoidCallback toggleIsFavorite;
  final PostEntity? post;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        DisplayFavoritesButtonRow(
          isFavorite: post?.isFavorite ?? false,
          toggleIsFavorite: toggleIsFavorite,
        ),
        DisplayImage(imageUrl: post?.imageUrl ?? ""),
        DisplayDetailsRow(
          label: AppStrings.titleLabelText,
          text: post?.title ?? "",
        ),
        DisplayDetailsRow(
          label: AppStrings.summaryLabelText,
          text: post?.summary ?? "",
        )
      ],
    );
  }
}

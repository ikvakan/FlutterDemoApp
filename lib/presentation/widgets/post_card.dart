import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_onboarding/constants/app_routs.dart';
import 'package:flutter_onboarding/constants/app_strings.dart';
import 'package:flutter_onboarding/constants/ui_constants.dart';
import 'package:flutter_onboarding/domain/model/post_entity.dart';
import 'package:flutter_onboarding/presentation/screens/cubit/post_cubit.dart';
import 'package:flutter_onboarding/presentation/widgets/favorite_icon.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
    required this.post,
  });

  final PostEntity post;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(post.id.toString()),
      direction: DismissDirection.startToEnd,
      confirmDismiss: (direction) async {
        return showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text(AppStrings.alertDialogTitle),
              content: const Text(AppStrings.alertDialogContent),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text(AppStrings.alertDialogCancel),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: const Text(AppStrings.alertDialogConfirm),
                ),
              ],
            );
          },
        );
      },
      onDismissed: (direction) {
        BlocProvider.of<PostCubit>(context).deletePost(post);
      },
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushNamed(AppRouts.details, arguments: post.id.toString());
        },
        child: Card(
          child: ListTile(
            leading: CircleAvatar(
              radius: UiConstants.circleAvatarRadiusSmall,
              backgroundImage: NetworkImage(post.imageUrl ?? ""),
            ),
            title: Text(
              "${AppStrings.titleLabelText} ${post.title}",
            ),
            subtitle: Text(
              "${AppStrings.summaryLabelText} ${post.summary}",
              overflow: TextOverflow.ellipsis,
            ),
            trailing: SizedBox(
              width: UiConstants.cardSizedBoxDefaultWidth,
              height: UiConstants.cardSizedBoxDefaultHeight,
              child: Center(
                child: FavouriteIcon(
                  isFavorite: post.isFavorite,
                  size: UiConstants.favoriteIconCardSize,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

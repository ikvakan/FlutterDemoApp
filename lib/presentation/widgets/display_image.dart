import 'package:flutter/material.dart';
import 'package:flutter_onboarding/constants/ui_constants.dart';

class DisplayImage extends StatelessWidget {
  const DisplayImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(UiConstants.marginDefault),
      child: CircleAvatar(
        radius: UiConstants.circleAvatarRadiusDefault,
        backgroundImage: NetworkImage(imageUrl),
      ),
    );
  }
}

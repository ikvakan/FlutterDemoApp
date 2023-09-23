import 'package:flutter/material.dart';
import 'package:flutter_onboarding/constants/ui_constants.dart';

class FavouriteIcon extends StatelessWidget {
  const FavouriteIcon({super.key, required this.isFavorite, this.size = UiConstants.iconSizeDefault});
  final bool isFavorite;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Icon(
      isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
      color: Colors.black,
      size: size,
    );
  }
}

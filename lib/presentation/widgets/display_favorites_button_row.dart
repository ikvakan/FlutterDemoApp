import 'package:flutter/material.dart';
import 'package:flutter_onboarding/presentation/widgets/favorite_icon.dart';

class DisplayFavoritesButtonRow extends StatelessWidget {
  const DisplayFavoritesButtonRow({
    required this.isFavorite,
    required this.toggleIsFavorite,
  });

  final bool isFavorite;
  final VoidCallback toggleIsFavorite;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            padding: EdgeInsets.zero,
            splashColor: Colors.transparent,
            alignment: Alignment.center,
            onPressed:toggleIsFavorite,
            icon: FavouriteIcon(
              isFavorite: isFavorite,
            ),
          ),
        ],
      ),
    );
  }
}

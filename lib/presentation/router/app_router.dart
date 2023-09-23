import 'package:flutter/material.dart';
import 'package:flutter_onboarding/presentation/screens/favorites_screen.dart';
import 'package:flutter_onboarding/presentation/screens/post_details_screen.dart';
import 'package:flutter_onboarding/presentation/screens/posts_list_screen.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const PostListScreen());
      case '/details':
        return MaterialPageRoute(
          builder: (_) =>
              PostDetailsScreen(postId: settings.arguments as String?),
        );
      case '/favorites':
        return MaterialPageRoute(
          builder: (_) => const FavoritesScreen(),
        );
      default:
        return null;
    }
  }
}

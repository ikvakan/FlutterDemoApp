import 'package:flutter/material.dart';
import 'package:flutter_onboarding/domain/model/post_entity.dart';
import 'package:flutter_onboarding/presentation/widgets/post_card.dart';

class PostListView extends StatelessWidget {
  final List<PostEntity> items;
  final bool isLoadingMorePosts;
  final VoidCallback loadAdditionalPosts;

  const PostListView({
    super.key,
    required this.items,
    required this.loadAdditionalPosts,
    required this.isLoadingMorePosts,
  });

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        if (!isLoadingMorePosts &&
            scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
          loadAdditionalPosts();
        }
        return true;
      },
      child: ListView.builder(
        itemCount: items.length + (isLoadingMorePosts ? 1 : 0),
        itemBuilder: (context, index) {
          if (index == items.length && isLoadingMorePosts) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return PostCard(
            post: items[index],
          );
        },
      ),
    );
  }
}

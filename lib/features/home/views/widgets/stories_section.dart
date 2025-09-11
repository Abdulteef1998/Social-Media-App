import 'package:flutter/material.dart';
import 'package:social_media_app/core/utils/theme/app_colors.dart';

class StoriesSection extends StatelessWidget {
  const StoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (index == 0) {
            return StoryItem(firstItem: true);
          }
          return StoryItem();
        },
        itemCount: 10,
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  final bool firstItem;
  const StoryItem({super.key, this.firstItem = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (firstItem) {
          // Navigate to story creation page
        } else {
          // Navigate to story detail
          // Navigator.of(context).pushNamed('/viewStory');
        }
      },
      child: Column(
        children: [
          Container(
            width: 80,
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              color: AppColors.white,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.primary, width: 2),
            ),
            child: CircleAvatar(
              radius: 35,
              backgroundColor: firstItem ? AppColors.babyBlue : null,
              child: firstItem
                  ? const Icon(Icons.add, color: AppColors.white, size: 30)
                  : null,
            ),
          ),
          const SizedBox(height: 8),
          if (firstItem)
            Text('Share Story', style: Theme.of(context).textTheme.titleMedium)
          else
            Text('User ', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

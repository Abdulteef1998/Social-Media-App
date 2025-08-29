import 'package:flutter/material.dart';
import 'package:social_media_app/core/utils/app_assets.dart';
import 'package:social_media_app/core/utils/theme/app_colors.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(AppAssets.logo, width: size.width * 0.5, height: 50),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, size: 30, color: AppColors.black),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none_rounded,
                size: 30,
                color: AppColors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

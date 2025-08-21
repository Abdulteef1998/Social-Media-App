import 'package:flutter/material.dart';
import 'package:social_media_app/core/utils/app_assets.dart';
import 'package:social_media_app/core/utils/theme/app_colors.dart';

import '../widgets/login_view.dart';
import '../widgets/register_view.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Tab> tabs = [
      const Tab(text: 'Sign In'),
      const Tab(text: 'Sign up'),
    ];
    final List<Widget> tabViews = [LoginView(), RegisterView()];
    return DefaultTabController(
      length: tabs.length,
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  vertical: 8,
                  horizontal: 64,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 32),
                    Image.asset(AppAssets.logo),
                    const SizedBox(height: 50),
                    TabBar(
                      controller: DefaultTabController.of(context),
                      tabs: tabs,
                      isScrollable: true,
                      tabAlignment: TabAlignment.start,
                      indicatorColor: AppColors.babyBlue10,
                      labelColor: AppColors.black,
                      labelStyle: Theme.of(context).textTheme.bodyLarge!
                          .copyWith(fontWeight: FontWeight.w400),
                      dividerColor: AppColors.mainIndicator,
                    ),

                    const SizedBox(height: 46),
                    Expanded(
                      child: TabBarView(
                        controller: DefaultTabController.of(context),
                        children: tabViews,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:social_media_app/core/router/app_routes.dart';
import 'package:social_media_app/core/views/pages/custom_bottom_navbar.dart';
import 'package:social_media_app/core/views/pages/not_found_page.dart';
import 'package:social_media_app/features/auth/views/login/screen/auth_page.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.authRoute:
        return MaterialPageRoute(
          builder: (context) => AuthPage(),
          settings: settings,
        );
      case AppRoutes.homeRoute:
        return MaterialPageRoute(
          builder: (context) => CustomBottomNavbar(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundPage(),
          settings: settings,
        );
    }
  }
}

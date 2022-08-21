import 'package:flutter/material.dart';
import 'package:flutter_navigator_simple_v4/ui/first_view.dart';
import 'package:flutter_navigator_simple_v4/ui/second_view.dart';
import 'package:flutter_navigator_simple_v4/ui/splash_screen_view.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case SplashScreenView.TAG:
        return MaterialPageRoute(builder: (_) => const SplashScreenView());
      case FirstView.TAG:
        return MaterialPageRoute(builder: (_) => const FirstView());
      case SecondView.TAG:
        return MaterialPageRoute(builder: (_) => const SecondView());
      default:
        return MaterialPageRoute(builder: (_) => const SplashScreenView());
    }
  }
}
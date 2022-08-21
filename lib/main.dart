import 'package:flutter/material.dart';
import 'package:flutter_navigator_simple_v4/app_router.dart';
import 'package:flutter_navigator_simple_v4/ui/splash_screen_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: SplashScreenView.TAG,
    );
  }
}

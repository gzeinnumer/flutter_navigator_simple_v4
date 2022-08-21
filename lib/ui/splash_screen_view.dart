import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_navigator_simple_v4/ui/first_view.dart';

class SplashScreenView extends StatelessWidget {
  static const String TAG = "SplashScreenView";

  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SplashScreen"),
      ),
      body: Builder(
          builder: (context) {
            startSplashScrean(context);
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
      ),
    );
  }

  startSplashScrean(BuildContext context) async{
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.pushReplacementNamed(context, FirstView.TAG);
    });
  }
}
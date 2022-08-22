# flutter_navigator_simple_v4

|<img src="/preview/preview1.png" width="300"/>|<img src="/preview/preview2.png" width="300"/>|<img src="/preview/preview3.png" width="300"/>|
|--|--|--|

```dart
onGenerateRoute: AppRouter.generateRoute,
initialRoute: SplashScreenView.TAG,
```
```dart
Navigator.pushReplacementNamed(context, FirstView.TAG);
```
```dart
Navigator.pushNamed(context, FirstView.TAG);
```

- app_router.dart
```dart
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
```

- main.dart
```dart
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
```

- splash_Screen.dart
```dart
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
```

- first_view.dart
```dart
import 'package:flutter/material.dart';
import 'package:flutter_navigator_simple_v4/ui/second_view.dart';

class FirstView extends StatelessWidget {
  static const String TAG = "FirstView";

  const FirstView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First"),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text("To Second"),
            onPressed: () {
              Navigator.pushNamed(context, SecondView.TAG);
            },
        ),
      ),
    );
  }
}
```

- second_view.dart
```dart
import 'package:flutter/material.dart';

class SecondView extends StatelessWidget {
  static const String TAG = "SecondView";

  const SecondView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second"),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text("Go Back"),
            onPressed: () {
              Navigator.pop(context);
            },
        ),
      ),
    );
  }
}
```

---

```
Copyright 2022 M. Fadli Zein
```
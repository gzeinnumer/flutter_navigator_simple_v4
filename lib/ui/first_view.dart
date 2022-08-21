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
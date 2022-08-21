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
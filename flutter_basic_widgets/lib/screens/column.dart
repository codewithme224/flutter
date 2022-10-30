import 'package:flutter/material.dart';

class MyColumnApp extends StatelessWidget {
  const MyColumnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text('Hello'),
            Text('Flutter'),
            Text('App'),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyRowApp extends StatelessWidget {
  const MyRowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              'Hello ',
              style: TextStyle(fontSize: 20, backgroundColor: Colors.blue),
            ),
            Text('Flutter!'),
            Text('!!'),
          ],
        ),
      ),
    );
  }
}

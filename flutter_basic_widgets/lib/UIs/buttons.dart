import 'package:flutter/material.dart';

void main() {
  runApp(const Buttons());
}

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Buttons'),
        ),
        body: ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text('No'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("YES"),
            ),
          ],
        ),
      ),
    );
  }
}



//! STACKS

import 'package:flutter/material.dart';

void main() {
  runApp(const StackWidgets());
}

class StackWidgets extends StatelessWidget {
  const StackWidgets({super.key});

  final String _title = "Stack Widgets";

  @override
  Widget build(BuildContext context) {
    Widget buildStack() {
      return Center(
        child: Stack(
          alignment: const Alignment(0.8, 0.8),
          children: [
            // const CircleAvatar(
            //   backgroundImage: AssetImage('images/img2.jpg'),
            //   radius: 100,
            // ),

            Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 100.0),
                  padding: const EdgeInsets.all(20.0),
                  width: 80,
                  height: 250,
                  decoration: const BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                  ),
                ),
              ],
            ),

            Container(
              decoration: const BoxDecoration(
                color: Colors.black45,
              ),
              child: Container(
                width: 300,
                height: 60,
                decoration: const BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
              // child: const Text(
              //   'The Blues',
              //   style: TextStyle(
              //     fontSize: 20,
              //     fontWeight: FontWeight.bold,
              //     color: Colors.white,
              //   ),
              // ),
            ),
            Container(
              width: 80,
              height: 250,
              decoration: const BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
              ),
            ),
            Container(
              width: 300,
              height: 60,
              margin: const EdgeInsets.only(bottom: 165),
              decoration: const BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
          ],
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(_title),
        ),
        body: buildStack(),
      ),
    );
  }
}

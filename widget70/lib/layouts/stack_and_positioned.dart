//! STACKS AND POSITIONED

import 'package:flutter/material.dart';

void main() {
  runApp(const StackAndPosition());
}

class StackAndPosition extends StatefulWidget {
  const StackAndPosition({super.key});

  @override
  State<StackAndPosition> createState() => _StackAndPositionState();
}

class _StackAndPositionState extends State<StackAndPosition> {
  final String _title = "Stack and Positioned";

  @override
  Widget build(BuildContext context) {
    Widget stackPosition() {
      return Container(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 30,
              left: 30,
              height: 250,
              width: 250,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.green[500],
                child: const Text(
                  'Green',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Positioned(
              top: 70,
              left: 50,
              width: 250,
              height: 250,
              child: Container(
                width: 80,
                height: 80,
                color: Colors.purple[300],
                child: const Text(
                  'Purple',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 80,
              width: 250,
              height: 250,
              child: Container(
                width: 80,
                height: 80,
                color: Colors.orangeAccent,
                child: const Text(
                  'Orange Accent',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Positioned(
              top: 135,
              left: 110,
              width: 250,
              height: 250,
              child: Container(
                width: 80,
                height: 80,
                color: Colors.redAccent,
                child: const Text(
                  'Red Accent',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            )
          ],
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(_title),
        ),
        body: stackPosition(),
      ),
    );
  }
}

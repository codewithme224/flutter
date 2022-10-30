//! Interactive Viewer

import 'package:flutter/material.dart';

class Widget5 extends StatefulWidget {
  const Widget5({super.key});

  @override
  State<Widget5> createState() => _Widget5State();
}

class _Widget5State extends State<Widget5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(
          double.infinity,
        ),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Interactive Viewer'),
          ),
        ),
      ),
    );
  }
}
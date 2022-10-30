//! Circle Avatar Widget

import 'package:flutter/material.dart';

class Widget8 extends StatelessWidget {
  const Widget8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatar Widget'),
      ),
      body: const Center(
        child: CircleAvatar(
          backgroundColor: Colors.orangeAccent,
          radius: 55,
          backgroundImage: AssetImage('images/image.jpg'),
          child: Text(
            'Einstein',
            style: TextStyle(color: Colors.white),
          ),
        ),
        
      ),
    );
  }
}

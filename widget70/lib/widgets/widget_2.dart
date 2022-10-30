//! Preferred Size Widget

import 'package:flutter/material.dart';

class Widget2 extends StatelessWidget {
  const Widget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Container(
          height: 120,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: <Color>[
              Colors.redAccent,
              Colors.orangeAccent,
            ],),
          ),
          child: SafeArea(
            child: Center(
              child: ListTile(
                title: const Text('Flutter Widget'),
                trailing: IconButton(
                  icon: const Icon(
                    Icons.search,
                    size: 20,
                  ),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ),
        
      ),
    );
  }
}
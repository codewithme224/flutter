//! Using Material Components

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Material Components',
    home: MaterialComponent(),
  ));
}

class MaterialComponent extends StatelessWidget {
  const MaterialComponent({super.key});

  @override
  Widget build(BuildContext context) {
    //* Scaffold is a layout for major Material components.
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigate menu',
          onPressed: null,
        ),
        title: const Text('Material Components'),
        actions: const [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          )
        ],
      ),
      //* body is the majority of the screen
      body: const Center(
        child: Text('Hello, Jesus!'),
      ),
      floatingActionButton: const FloatingActionButton(
        tooltip: 'Add',
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}

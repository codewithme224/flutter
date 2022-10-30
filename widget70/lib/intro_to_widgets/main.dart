//! Container and Others

import 'package:flutter/material.dart';

class WidgetMain extends StatelessWidget {
  const WidgetMain({super.key, required this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),

      //! Row
      child: Row(
        children: [
          const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null, // Null disables the button
          ),
          // Expanded expands its child
          // to fill the available space.
          Expanded(
            child: title,
          ),
          const IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null, // Null disables the button,
          )
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        WidgetMain(
          title: Text(
            'Container Widget',
            style: Theme.of(context).primaryTextTheme.titleLarge,
          ),
        ),
        const Expanded(
          child: Center(
            child: Text('Hello World!'),
          ),
        )
      ],
    ));
  }
}

void main() {
  runApp(const MaterialApp(
    title: 'My App',
    home: SafeArea(
      child: MyScaffold(),
    ),
  ));
}

//! Rows

import 'package:flutter/material.dart';

void main() => runApp(const ColumnWidget());

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  static const String _title = "Column Widget";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Text('We move under cover and we move as one'),
            Text('Through the night, we have one shot to live another day'),
            Text('We cannot let a stray gunshot give us away'),
            Text('Deliver features faster'),
            Text('Craft beautiful UIs'),
            
            Expanded(
              child: FittedBox(
                child: FlutterLogo(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

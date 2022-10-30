//! Rows

import 'package:flutter/material.dart';

void main() => runApp(const RowWidget());

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  static const String _title = "Row Widget";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
        ),
        body: Row(
          textDirection: TextDirection.rtl,
          children: const <Widget>[
            Expanded(
              child: Text(
                'Deliver feature faster',
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                'Craft beautiful UIs',
                textAlign: TextAlign.center,
              ),
            ),
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

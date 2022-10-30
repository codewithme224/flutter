//! Borders and stroke (Foreground)

import 'package:flutter/material.dart';
import 'dart:ui' as ui;

void main() => runApp(const TextStyleWidget());

class TextStyleWidget extends StatelessWidget {
  const TextStyleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Borders and stroke (Foreground)'),
        ),
        body: Center(
          child: Stack(
            children: <Widget>[
              //! Stroked text as border
              /*Text(
                'Greetings, planet!',
                style: TextStyle(
                  fontSize: 40,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 6
                    ..color = Colors.blue[700]!,
                ),
              ),*/
              //! Solid text as fill
              Text(
                'Greetings, planet!',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.grey[300],
                ),
              ),
              Text(
                'Greetings, planet!',
                style: TextStyle(
                  fontSize: 40,
                  foreground: Paint()
                    ..shader = ui.Gradient.linear(
                      const Offset(0, 20),
                      const Offset(150, 20),
                      <Color>[Colors.red, Colors.yellow],
                    ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

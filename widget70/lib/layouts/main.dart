import 'package:flutter/material.dart';
import 'package:widget70/layouts/layout_1.dart';
import 'package:widget70/layouts/layout_2.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Center(
        child: Nested(),
      ),
    ),
  ));
}

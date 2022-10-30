import 'package:flutter/material.dart';
import 'package:widget70/widgets/widget_1.dart';
import 'package:widget70/widgets/widget_10.dart';
import 'package:widget70/widgets/widget_2.dart';
import 'package:widget70/widgets/widget_3.dart';
import 'package:widget70/widgets/widget_4.dart';
import 'package:widget70/widgets/widget_5.dart';
import 'package:widget70/widgets/widget_6.dart';
import 'package:widget70/widgets/widget_7.dart';
import 'package:widget70/widgets/widget_8.dart';
import 'package:widget70/widgets/widget_9.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
          primarySwatch: Colors.blueGrey),
      home: const Widget10(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_basic_widgets/screens/column.dart';
import 'package:flutter_basic_widgets/screens/container.dart';
import 'package:flutter_basic_widgets/screens/footer.dart';
import 'package:flutter_basic_widgets/screens/listviews.dart';
import 'package:flutter_basic_widgets/screens/rows.dart';
import 'package:flutter_basic_widgets/screens/stackandpositioned.dart';
import 'package:flutter_basic_widgets/screens/statefulwidget.dart';
import 'package:flutter_basic_widgets/screens/statelesswidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Counter(),
    );
  }
}

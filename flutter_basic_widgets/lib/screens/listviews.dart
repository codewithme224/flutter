import 'package:flutter/material.dart';

class ListViewsApp extends StatelessWidget {
  final myList = List<int>.generate(100, (i) => i);
   ListViewsApp({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Views'),
        centerTitle: true,
      ),
      body: ListView(scrollDirection: Axis.horizontal,
       children: const [
        Text('Hello'),
        Text('Flutter'),
        Text('World'),

        // ListView.builder(
        //   itemCount: myList.length,
        //   itemBuilder: (context, index) {
        //     return Text("${myList[index]}");
        //   },
        // )
      ]),
    );
  }
}

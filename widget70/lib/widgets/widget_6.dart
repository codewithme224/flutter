//! Reorderable List View

import 'package:flutter/material.dart';

class Widget6 extends StatefulWidget {
  const Widget6({super.key});

  @override
  State<Widget6> createState() => _Widget6State();
}

class _Widget6State extends State<Widget6> {
  final List<int> items = List<int>.generate(30, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reorderable List View'),
      ),
      body: ReorderableListView(
        children: List.generate(
            items.length,
            (index) => ListTile(
                  key: Key('$index'),
                  tileColor:
                      items[index].isOdd ? Colors.white12 : Colors.white30,
                  title: Text('Item ${items[index]}'),
                  trailing: const Icon(Icons.drag_handle_sharp),
                )),
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            final int item = items.removeAt(oldIndex);
            items.insert(newIndex, item);
          });
        },
      ),
    );
  }
}

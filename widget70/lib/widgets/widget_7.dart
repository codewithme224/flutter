//! CheckBox ListTile Widget

import 'package:flutter/material.dart';

class Widget7 extends StatefulWidget {
  const Widget7({super.key});

  @override
  State<Widget7> createState() => _Widget7State();
}

class _Widget7State extends State<Widget7> {
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckBox ListTile Widget'),
        centerTitle: true,
      ),
      body: Center(
        child: CheckboxListTile(
          title: const Text("CheckBox ListTile"),
          value: _isChecked,
          onChanged: (bool? newValue) {
            setState(() {
              _isChecked = newValue;
            });
          },
          activeColor: Colors.orangeAccent,
          checkColor: Colors.white,
          tileColor: Colors.black12,
          subtitle: const Text('This is a subtitle'),
          controlAffinity: ListTileControlAffinity.leading,
          tristate: true,
        ),
      ),
    );
  }
}

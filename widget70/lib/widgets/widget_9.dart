//! Cupertino Context Menu

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Widget9 extends StatelessWidget {
  const Widget9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cupertino Context Menu'),
      ),
    
      body: Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: CupertinoContextMenu(
            child: Image.asset('images/youtube.png'),
            actions: <Widget>[
              CupertinoContextMenuAction(
                child: const Text('Action one'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              CupertinoContextMenuAction(
                child: const Text('Action two'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              CupertinoContextMenuAction(
                child: const Text('Action three'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

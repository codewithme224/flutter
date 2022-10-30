import 'package:flutter/material.dart';

void main() {
  runApp(const StacksWidget());
}

class StacksWidget extends StatelessWidget {
  const StacksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Widget stacksWidget() {
      return Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: Container(
              width: 300,
              height: 300,
              color: Colors.redAccent,
            ),
          ),
          Container(
            width: 250,
            height: 250,
            color: Colors.amberAccent,
          ),
          Positioned(
            right: 0,
            top: 15,
            child: Container(
              width: 230,
              height: 230,
              color: Colors.deepPurpleAccent,
            ),
          )
        ],
      );
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stacks Widget'),
        ),
        body: stacksWidget(),
      ),
    );
  }
}

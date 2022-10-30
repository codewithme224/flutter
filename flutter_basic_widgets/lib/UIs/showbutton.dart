import 'package:flutter/material.dart';

void main() {
  runApp(const ShowButton());
}

class ShowButton extends StatefulWidget {
  const ShowButton({super.key});

  @override
  State<ShowButton> createState() => _ShowButtonState();
}

class _ShowButtonState extends State<ShowButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Show Button Sheet'),
        ),
        body: Builder(
          builder: (BuildContext context) {
            return Center(
              child: TextButton(
                child: const Text('Button'),
                
                onPressed: () {
                  Scaffold.of(context)
                      .showBottomSheet<void>((BuildContext context) {
                    return Container(
                      color: Colors.blueAccent,
                      height: 40,
                      child: const Center(
                        child: Text(
                          "BottomSheet",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  });
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

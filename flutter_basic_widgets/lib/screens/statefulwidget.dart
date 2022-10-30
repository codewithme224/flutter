import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.purple,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$_counter",
                style: const TextStyle(fontSize: 50, color: Colors.white),
              ),
              IconButton(
                icon: const Icon(
                  Icons.add,
                  size: 50,
                ),
                onPressed: () {
                  setState(() => _counter++);
                },
              ),
              IconButton(
                icon: const Icon(Icons.remove, size: 50),
                onPressed: () {
                  setState(() => _counter--);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class WidgetDemo extends StatefulWidget {
  final int id;
  const WidgetDemo(this.id);

  @override
  State<WidgetDemo> createState() => _WidgetDemoState();
}

class _WidgetDemoState extends State<WidgetDemo> {
  @override
  Widget build(BuildContext context) {
    return Text('The given id is ${widget.id}');
  }
}

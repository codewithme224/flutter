import 'package:flutter/material.dart';

void main() {
  runApp(const CardExamples());
}

class CardExamples extends StatelessWidget {
  const CardExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Card Examples'),
        ),
        body: Center(
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Card title 1'),
                  subtitle: Text(
                    'Secondary Text',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Greyhound divisively hello coldly wonderfully marginally far upon excluding',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                        // color: const Color(0xFF6200EE),
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.pinkAccent),
                        onPressed: () {},
                        child: const Text('Action 1')),
                    TextButton(
                        // color: const Color(0xFF6200EE),
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.green),
                        onPressed: () {},
                        child: const Text('Action 2'))
                  ],
                ),
                Image.asset('images/img1.jpg'),
                Image.asset('images/img2.jpg'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

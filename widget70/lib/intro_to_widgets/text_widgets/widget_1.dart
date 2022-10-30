//! TEXT WIDGET

import 'package:flutter/material.dart';

void main() => runApp(const TextWidget());

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  static const String _title = 'Flutter Text';
  static const String _name = 'Emmanuella';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
        ),
        body: Center(
          child: SelectionArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  const <Widget>[
                Text('Selectable Text'),
                SelectionContainer.disabled(child: Text('Non-selectable Text')),
                Text('Selectable Text'),
                //! Text.Rich
                Text.rich(
                  TextSpan(text: 'Hello', children: <TextSpan>[
                    TextSpan(
                        text: ' Beautiful',
                        style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: Colors.red)),
                    TextSpan(
                        text: ' World',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.orangeAccent))
                  ]),
                ),
                //! Text Overflow
                Text(
                  'Hello, $_name! how are you?. You know I care about you right?',
                  textAlign: TextAlign.end,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                
                
              ],
              
            ),
          ),
          
        ),
        
      ),
    );
  }
}

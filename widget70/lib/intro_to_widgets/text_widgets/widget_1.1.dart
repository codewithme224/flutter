//! TextStyle Widget

import 'package:flutter/material.dart';

void main() => runApp(const TextStyleWidget());

class TextStyleWidget extends StatelessWidget {
  const TextStyleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('TextStyle Widget')),
        body: Center(
          child: RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                //! Opacity and color
                TextSpan(
                  text: "You don't have the vote. \n",
                  style: TextStyle(
                      fontSize: 20, color: Colors.black.withOpacity(0.6)),
                ),
                TextSpan(
                  text: "You don't have the vote. \n",
                  style: TextStyle(
                      fontSize: 20, color: Colors.black.withOpacity(0.8)),
                ),
                TextSpan(
                  text: "You don't have the vote. \n",
                  style: TextStyle(
                      fontSize: 20, color: Colors.black.withOpacity(1.0)),
                ),

                //! Text Size
                TextSpan(
                    text: "These are wise words \n",
                    style: DefaultTextStyle.of(context)
                        .style
                        .apply(fontSizeFactor: 1.0)),

                const TextSpan(
                  text: "You don't have the vote. \n",
                  style: TextStyle(height: 5, fontSize: 20),
                ),
              ],
            ),
            
          ),
        ),
      ),
    );
  }
}

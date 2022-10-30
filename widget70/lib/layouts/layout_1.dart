//! Flutter Layouts

import 'package:flutter/material.dart';

class Layout1 extends StatelessWidget {
  const Layout1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        //! Packing Widgets
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star, color: Colors.green[500]),
          Icon(Icons.star, color: Colors.green[500]),
          Icon(Icons.star, color: Colors.green[500]),
          const Icon(Icons.star, color: Colors.black),
          const Icon(Icons.star, color: Colors.black),
        ],
      
        /*mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Image.asset(
              'images/img1.jpg',
              height: 250,
              width: 250,
            ),
          ),
          Expanded(
            flex: 2,
            child: Image.asset(
              'images/img2.jpg',
              height: 250,
              width: 250,
            ),
          ),
          Expanded(
            child: Image.asset(
              'images/img3.jpg',
              height: 250,
              width: 250,
            ),
          ),
        ],*/
      ),
      
    );
  }
}

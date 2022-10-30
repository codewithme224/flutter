//! Card Widget

import 'package:flutter/material.dart';

void main() {
  runApp(const CardWidget());
}

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildCard() {
      return SizedBox(
        height: 210,
        child: Card(
          shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.deepPurpleAccent),
              borderRadius: BorderRadius.circular(5)),
          child: Column(
            children: [
              ListTile(
                title: const Text(
                  '1625 Main Street',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: const Text('My City, GA 22910'),
                leading: Icon(
                  Icons.restaurant_menu,
                  color: Colors.blue[500],
                ),
              ),
              const Divider(),
              ListTile(
                title: const Text(
                  '(233) 544-289513',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                leading: Icon(
                  Icons.contact_phone,
                  color: Colors.blue[500],
                ),
              ),
              ListTile(
                title: const Text('codewithme223@gmail.com'),
                leading: Icon(
                  Icons.contact_mail,
                  color: Colors.blue[500],
                ),
              )
            ],
          ),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: buildCard(),
      ),
    );
  }
}

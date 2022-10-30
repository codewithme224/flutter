//! GridView

import 'package:flutter/material.dart';

void main() {
  runApp(const GridViewLayout());
}

class GridViewLayout extends StatelessWidget {
  const GridViewLayout({super.key});

  final _title = "GridView Layouts";

  @override
  Widget build(BuildContext context) {
    List<Container> _buildGridTileList(int count) => List.generate(
        count,
        (i) => Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.red),
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              margin: const EdgeInsets.all(4),
              child: Image.asset('images/img3.jpg'),
            ));

    Widget buildGrid() => GridView.extent(
          maxCrossAxisExtent: 250,
          padding: const EdgeInsets.all(4),
          // mainAxisSpacing: 10,
          crossAxisSpacing: 15,
          children: _buildGridTileList(30),
        );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(_title),
          centerTitle: true,
        ),
        body: buildGrid(),
        drawer: const Drawer(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          // backgroundColor: const Color(0xFF6200EE),
          // selectedItemColor: Colors.white,
          // unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: 'Profile', icon: Icon(Icons.account_circle)),
            BottomNavigationBarItem(
                label: 'Notification', icon: Icon(Icons.add_alert)),
            BottomNavigationBarItem(
                label: 'Favorite', icon: Icon(Icons.favorite)),
            BottomNavigationBarItem(
                label: 'Settings', icon: Icon(Icons.settings)),
          ],
        ),
      ),
    );
  }
}

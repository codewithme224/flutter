import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialDesign());
}

class MaterialDesign extends StatelessWidget {
  const MaterialDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter'),
          // centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.info),
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                leading: const Icon(Icons.people),
                title: const Text('Item 1'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.train),
                title: const Text('Item 2'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text('Info'),
                onTap: () {},
              )
            ],
          ),
        ),
        body: const Center(
          child: Text('Wow nice book'),
        ),
        
        
        //* Floating Action Button
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          child: const Icon(Icons.add),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        
      ),
    );
  }
}

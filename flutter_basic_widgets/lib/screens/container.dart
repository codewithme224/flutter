import 'package:flutter/material.dart';

class MyContainers extends StatelessWidget {
  const MyContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 260,
      color: Colors.blueGrey,
      alignment: Alignment.center,
      transform: Matrix4.rotationZ(-0.25),
      child: const Text(
        'Containers!',
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),

      /*child: const Center(),
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                spreadRadius: 5,
                // blurRadius: 7,
                offset: Offset(0, 3))
          ],
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(0xFF, 0xFF, 0x7F, 0x50),
                Color.fromARGB(255, 66, 165, 245),
              ])),*/

      /*decoration: BoxDecoration(
        color: Colors.purple,
        image: const DecorationImage(
          image: NetworkImage(
              'https://www.jaysbirdbarn.com/wp-content/uploads/2018/04/Violet_Sabrewing_t715.jpg'),
          fit: BoxFit.cover,
        ),
        border: Border.all(
          color: Colors.white,
          width: 20,
        ),
        borderRadius: BorderRadius.circular(30),
      ),*/
    );
  }
}

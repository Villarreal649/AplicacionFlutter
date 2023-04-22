import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        elevation: 0,
        centerTitle: true,
        title: const Text('Page Container'),
      ),
      body: Center(
        child: Wrap(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              width: 100,
              height: 100,
              color: Colors.pink,
              child: const Text('Hola desde el contenedor rosa'),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GridViewPage extends StatelessWidget{
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold( appBar: AppBar(
        backgroundColor: Colors.indigo,
        elevation: 0,
        centerTitle: true,
        title: const Text('Grid View'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blue
          ),
          Container(
            color: const Color.fromARGB(255, 33, 243, 44)
          ),
          Container(
            color: const Color.fromARGB(255, 187, 243, 33)
          ),
          Container(
            color: Color.fromARGB(255, 26, 31, 104)
          ),
          Container(
            color: const Color.fromARGB(255, 243, 33, 33)
          ),
          Container(
            color: Colors.grey
          ),
          Container(
            color: Colors.black
          ),
        ],
      )
      );
  }
}
import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget {
  const ContadorPage({super.key});

  @override
  State<ContadorPage> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  int contador = 0;
  bool activo = true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        elevation: 0,
        centerTitle: true,
        title: const Text('Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
          const Text(
              'Contador a tiempo real',
              style:  TextStyle(fontSize: 20),
            ),
            Text(
              contador.toString(),
              style: const TextStyle(fontSize: 15),
            )
          ],
        ) ,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: (activo == true) ? Colors.blueGrey: Colors.red,
        onPressed: () {

        setState(() {
          contador++;
        });
      },
      child: Icon(Icons.add),),
    );
  }
}
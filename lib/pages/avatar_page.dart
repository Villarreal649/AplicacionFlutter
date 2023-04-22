import 'package:flutter/material.dart';

class AvatarPage extends StatefulWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  _AvatarPageState createState() => _AvatarPageState();
}

class _AvatarPageState extends State<AvatarPage> {
  final List<Map<String, dynamic>> _usuarios = [
    {
      'nombre': 'Johan',
      'imagen': 'https://laverdadnoticias.com/__export/1646953416229/sites/laverdad/img/2022/03/10/darth_vader_obi_wan_kenobi_disney_plus.jpeg_1937081642.jpeg',
    },
    {
      'nombre': 'Marcos',
      'imagen': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTEemQhmNJuvc6JkBXH8_RsJ-Av8OxN1cUkw&usqp=CAU',
    },
    {
      'nombre': 'Ana',
      'imagen': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTN7Ji2FRsBg3itFbLOXSKkR5ITYAy0Uv6Xw&usqp=CAU',
    },
    {
      'nombre': 'María',
      'imagen': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQG5XQn4QTJ_Xjtxk-_TkStaWHWhreMNI6Riw&usqp=CAU',
    },
  ];

  String _nombreSeleccionado = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seleccionar usuario'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _usuarios.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(_usuarios[index]['imagen']),
                  ),
                  title: Text(_usuarios[index]['nombre']),
                  onTap: () {
                    setState(() {
                      _nombreSeleccionado = _usuarios[index]['nombre'];
                    });
                  },
                );
              },
            ),
          ),
          const Divider(),
          Center(
            child: Text(
              'Usuario seleccionado:',
              style: const TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            _nombreSeleccionado,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

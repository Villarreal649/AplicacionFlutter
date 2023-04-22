import 'package:flutter/material.dart';

class UserData extends StatelessWidget{
  final String nombre;
  final Color color;
  final Icon buttonIcon;
  final Icon textIcon;
  const UserData({
    required this.nombre,
    required this.color,
    required this.buttonIcon,
    required this.textIcon,
    super.key
  });

  @override
  Widget build(BuildContext context){
  return 
    Column(
      children: [
        FloatingActionButton(
          onPressed: () {},
          backgroundColor: color,
          splashColor: Colors.yellow,
          child: buttonIcon,
        ),
        Row(
          children: [
            Text(nombre), 
            textIcon
          ],
        ),
      ],
    );
  }
}
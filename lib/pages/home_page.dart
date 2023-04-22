import  'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 39, 47, 95),
        elevation: 0,
        centerTitle: true,
        title: const Text('Menu App'),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: ()=> Navigator.pushNamed(context, '/container'),
            splashColor: Colors.pink,
            leading: const Icon(Icons.apps),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            title: const Text('Container'),
            subtitle: const Text('Se utiliza como un contenedor de diseño'),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/stack'),
            splashColor: Colors.blue,
            leading: const Icon(Icons.fullscreen),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            title: const Text('Stack'),
            subtitle: const Text('Se utiliza para encimar widgets uno encima de otro'),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/inputs'),
            splashColor: Colors.green,
            leading: const Icon(Icons.power_input),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            title: const Text('Inputs'),
            subtitle: const Text('Se utiliza para la creación de distintos tipos de formularios'),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/buttons'),
            splashColor: Colors.red,
            leading: const Icon(Icons.radio_button_checked_rounded),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            title: const Text('Buttons'),
            subtitle: const Text('Se utiliza para dar clic y activar una función, un evento, etc.'),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/pageView'),
            splashColor: Colors.red,
            leading: const Icon(Icons.list),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            title: const Text('Page View'),
            subtitle: const Text('Se utiliza para hacer un scroll horizontal en forma de pagina'),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/gridView'),
            splashColor: Colors.red,
            leading: const Icon(Icons.list),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            title: const Text('Grid View'),
            subtitle: const Text('Scroll vertical poniendo una cantidad de valores por defecto'),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/contador'),
            splashColor: Colors.red,
            leading: const Icon(Icons.add),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            title: const Text('Contador'),
            subtitle: const Text('Se realizara un contador para utilizar el statefullwidget'),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/avatar'),
            splashColor: Colors.red,
            leading: const Icon(Icons.image),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            title: const Text('CircleAvatar'),
            subtitle: const Text('es un widget que muestra una imagen circular, comúnmente utilizado para mostrar avatares de usuario.'),
          ),
        ],
      )
    );
  }
}
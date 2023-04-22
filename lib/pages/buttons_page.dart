import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        elevation: 0,
        centerTitle: true,
        title: const Text('Page Buttons'),
      ),
      body: Center(
        child: Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  shadowColor: Colors.blue,
                  elevation: 20,
                ),
              onPressed: (){}, 
              child: const Text('Aceptar'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                onPressed: (){},
                icon: const Icon(Icons.save),
                label: const Text('Guardar'),
              ),
            ),
            IconButton(
              onPressed: () {},
              splashColor: Colors.red, 
              icon: const Icon(Icons.cancel)
            ),
            TextButton(
              onPressed: () {},
              child: const Text('¿Olvidaste tu contraseña?'),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.lock),
              label: const Text('Tu password'),
            ),
            const BackButton(),
            const CloseButton(),
            FilledButton(
              onPressed: () {}, 
              child: const Text('Capturar'),
            )
          ],
        ),
      )
    );
  }
}
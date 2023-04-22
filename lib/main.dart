import 'package:my_app/pages/buttons_page.dart';
import 'package:my_app/pages/contador_page.dart';
import 'package:my_app/pages/container_page.dart';
import 'package:my_app/pages/avatar_page.dart';
import 'package:my_app/pages/grid_view_page.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/pages/inputs_page.dart';
import 'package:my_app/pages/page_view_page.dart';
import 'package:my_app/pages/stack_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Primera App UTT',
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/container':(context) => const ContainerPage(),
        '/stack':(context) => const StackPage(),
        '/inputs':(context) => const InputsPage(),
        '/buttons':(context) => const ButtonsPage(),
        '/pageView':(context) => const PageViewPage(),
        '/gridView':(context) => const GridViewPage(),
        '/contador':(context) => const ContadorPage(),
        '/avatar':(context) => const AvatarPage(),
      },
    );
  }
}
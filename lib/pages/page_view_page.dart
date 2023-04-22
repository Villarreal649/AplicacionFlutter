import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PageViewPage extends StatelessWidget{
  const PageViewPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold( appBar: AppBar(
        backgroundColor: Colors.indigo,
        elevation: 0,
        centerTitle: true,
        title: const Text('Page View'),
      ),
      body:PageView(
        scrollDirection: Axis.vertical,
        children : [
          Image.network(
            'https://i.pinimg.com/originals/19/c5/6c/19c56c95667982dcaffa230a78216040.gif',
          fit: BoxFit.cover,),
          Image.network(
            'https://media.tenor.com/Up8RrLthFP8AAAAd/star-wars-captain-howzer.gif',
          fit: BoxFit.cover,),
          Image.network(
            'https://cdn.shopify.com/s/files/1/0182/2915/products/Jason-Raish---Star-Wars---Varaiant-gif-slow.gif?v=1664809984',
          fit: BoxFit.cover,),
          
        ],
      ),
      );
  }
}
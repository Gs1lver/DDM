import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navegacao/basket.dart';
import 'package:navegacao/favorite.dart';
import 'package:navegacao/person.dart';

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHomePage>{

  //atributo
  int _indice = 0;

  List<Widget> _telas = [
    Person(),
    Basket(),
    Favorite(),
  ];

  //metodo
  void _itemClicado(int index){
    setState(() {
      _indice = index;
    });

    /*switch(index){
      case 0:
        Navigator.pushNamed(context, '/person');
        break;
      case 1:
        Navigator.pushNamed(context, '/basket');
        break;
      case 2:
        Navigator.pushNamed(context, '/favorite');
        break;	
    }*/
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, '/favorite');
            },
            icon: Icon(Icons.favorite_rounded)
          ),
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, '/basket');
            },
            icon: Icon(Icons.shopping_cart_rounded)
          ),
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, '/person');
            },
            icon: Icon(Icons.account_circle_rounded)
          ),
        ],  
      ),
      body: _telas[_indice],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indice,
        onTap: _itemClicado,
        items: [
          BottomNavigationBarItem(
            icon: Icon (Icons.account_circle_rounded),
            label: "Person",
          ),
          BottomNavigationBarItem(
            icon: Icon (Icons.shopping_cart_rounded),
            label: "Basket",
          ),
          BottomNavigationBarItem(
            icon: Icon (Icons.favorite_rounded),
            label: "Favorite",
          ),
        ]
      )
    );
  }
}
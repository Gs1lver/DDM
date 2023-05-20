// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:exercicio_rotas/my_accountant.dart';
import 'package:exercicio_rotas/sobre.dart';
import 'package:exercicio_rotas/tela_bunita.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome>{

  //atributo
  int _indice = 0;

  List<Widget> _telas = [
    MyTelaBunita(),
    MyAccountant(),
    AboutUs(),
  ];

  //metodo
  void _itemClicado(int index){
    setState(() {
      _indice = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _telas[_indice],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indice,
        onTap: _itemClicado,
        items: [ 
          BottomNavigationBarItem(
            icon: Icon (Icons.home_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon (Icons.calculate_rounded),
            label: "Contador",
          ),
          BottomNavigationBarItem(
            icon: Icon (Icons.info_rounded),
            label: "Sobre",
          ),
        ]
      )
    );
  }
}

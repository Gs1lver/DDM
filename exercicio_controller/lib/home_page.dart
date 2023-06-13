import 'package:exercicio_controller/calculos.dart';
import 'package:exercicio_controller/nothing.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indice = 0;
  
  List<Widget> _telas = [
    Nothing(),
    Calculos()
  ];

  void _itemClicado(int index){
    setState(() {
      _indice = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, '/calculos');
            },
            icon: Icon(Icons.analytics)
          )
        ],  
      ),
      body: _telas[_indice]
    );
  }
}
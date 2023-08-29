import 'package:flutter/material.dart';
import 'package:list_tile/list_tile.dart';

class Lista extends StatefulWidget {
  const Lista({super.key});

  @override
  State<Lista> createState() => _ListaState();
}

class _ListaState extends State<Lista> {
  @override
  Widget build(BuildContext context) {      
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.transparent,
        title: const Text('Listinha'),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 8),
        separatorBuilder: (context, index) => Divider(thickness: 2,),
        itemCount: ,
        itemBuilder: ,
    );
  }
}
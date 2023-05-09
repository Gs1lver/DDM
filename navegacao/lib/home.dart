import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
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
      )
    );
  }
}
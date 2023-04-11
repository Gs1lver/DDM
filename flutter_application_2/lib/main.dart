// ignore_for_file: prefer_const_constructors

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
      title: 'Donatella Versace',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar (
          title: Text("Nosso pet"),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              DecoratedBox(
                decoration: BoxDecoration(color: Colors.purple),
                child: Padding (
                  padding: EdgeInsets.all(15),
                  child: Text("Gs1lver", style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              ),
              SizedBox(height: 10),
              DecoratedBox(
                decoration: BoxDecoration(color: Colors.lightBlue),
                child: Padding (
                  padding: EdgeInsets.all(15),
                  child: Text("lua-da-tarde", style: TextStyle(fontSize: 20)),
                )
              ),
              SizedBox(height: 10),
              DecoratedBox(
                decoration: BoxDecoration(color: Colors.orange),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text("AmeMeida", style: TextStyle(fontSize: 20)) ,
                )
              ),
              SizedBox(
                height: 30,
                child: Image.network('https://imagepng.org/wp-content/uploads/2017/10/coracao.png')
              )
            ],
          ),
        )
      )
    );
  }
}

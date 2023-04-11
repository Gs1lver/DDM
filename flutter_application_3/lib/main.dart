import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar (
          title: Text("uma História de Amor"),
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
                  child: Text("Eu", style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              ),
              SizedBox(height: 10),
              DecoratedBox(
                decoration: BoxDecoration(color: Colors.lightBlue),
                child: Padding (
                  padding: EdgeInsets.all(15),
                  child: Text("amo", style: TextStyle(fontSize: 20)),
                )
              ),
              SizedBox(height: 10),
              DecoratedBox(
                decoration: BoxDecoration(color: Colors.orange),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text("a Tânia", style: TextStyle(fontSize: 20)) ,
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
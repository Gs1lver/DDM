import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/my_pet.dart';

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
            appBar: AppBar(
              title: Text("uma História de Amor"),
              backgroundColor: Colors.black,
              centerTitle: true,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(height: 10),
                  MyPet("Eu", Colors.pink, 20, 15),
                  SizedBox(height: 10),
                  MyPet("amo", Colors.orange, 20, 15),
                  SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        SizedBox(height: 30),
                        MyPet("a", Colors.red, 20, 15),
                        SizedBox(height: 30),
                        DecoratedBox(
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding: EdgeInsets.all(15),
                            )),
                        SizedBox(height: 30),
                        MyPet("aula", Colors.green, 20, 15),
                        SizedBox(height: 30),
                        DecoratedBox(
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding: EdgeInsets.all(15),
                            )),
                        SizedBox(height: 30),
                        MyPet("da", Colors.blue, 20, 15),
                      ]),
                  SizedBox(height: 10),
                  DecoratedBox(
                      decoration: BoxDecoration(color: Color.fromARGB(255, 223, 131, 223)),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Text("Tânia", style: TextStyle(fontSize: 20)),
                      )),
                      SizedBox(height: 10),
                  Image.network(
                      'https://imagepng.org/wp-content/uploads/2017/10/coracao.png', width: 60,)
                ],
              ),
            )));
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:revisao/my_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aluguel"),
          backgroundColor: Color.fromARGB(255, 236, 172, 52),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center, --> centraliza objetos dentro da Column VERTICALMENTE
            children: [
            Image.network("https://xadmin.s3.us-east-2.amazonaws.com/6/PhotoAssets/3220/images/large/casa-amarela.jpg"),
            SizedBox(height: 5,),
            //Text("Casa Amarela", style: TextStyle(fontSize: 30),),
            MyWidget("Casa Amarela", Colors.amber, 30),
            SizedBox(height: 10,), //separando os dois textos
            Text("R\$ 1.200,00", style: TextStyle(fontSize: 15),),
            SizedBox(height: 10,), //separando column da row
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // centraliza objetos dentro da Column HORIZONTALMENTE
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text("Contato: ", style: TextStyle(fontSize: 20)),
                SizedBox(width: 5),
                Text("(xx) xxxxx-xxxx", style: TextStyle(fontSize: 15),)
              ],
            )
            //SizedBox(height: 10,),
            //Image.network("https://imagens-revista.vivadecora.com.br/uploads/2022/08/CAPA-As-casas-vermelhas-e-branco-fazem-muito-sucesso./-Fonte-Decorei.jpg"),
            //MyWidget("Casa Vermelha", Colors.red, 30),
          ]),
        ),
      ),
    );
  }
}

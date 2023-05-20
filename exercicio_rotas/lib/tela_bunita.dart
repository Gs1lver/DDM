// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:exercicio_rotas/my_accountant.dart';
import 'package:exercicio_rotas/sobre.dart';

import 'myTextBox.dart';

class MyTelaBunita extends StatefulWidget {
  const MyTelaBunita({super.key});

  @override
  State<MyTelaBunita> createState() => _MyTelaBunitaState();
}

class _MyTelaBunitaState extends State<MyTelaBunita> {
  //atributo
  int _indice = 0;

  List<Widget> _telas = [
    MyTelaBunita(),
    MyAccountant(),
    AboutUs(),
  ];

  //metodo
  void _itemClicado(int index) {
    setState(() {
      _indice = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bem vinde!"),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/contador');
              },
              icon: Icon(Icons.calculate_rounded)),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sobre');
              },
              icon: Icon(Icons.info_rounded)),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Image.network(
                "https://static.vecteezy.com/ti/vetor-gratis/p1/5283012-trabalho-reunindo-empresarios-no-escritorio-conceito-em-desenho-plano-desenho-colegas-discutir-tarefas-de-trabalho-enquanto-sentado-a-mesa-comunicacao-de-negocios-ilustracao-com-pessoas-cena-fundo-vetor.jpg",
                fit: BoxFit.contain,
              ),
              SizedBox(height: 10),
              DecoratedBox(
                decoration: BoxDecoration(),
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Bem vindo à aula de desenvolvimento de aplicativos\n para dispositivos móveis!",
                      textAlign: TextAlign.center,
                    )),
              ),
              DecoratedBox(
                decoration: BoxDecoration(),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text("Aqui você vai encontrar:"),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                      height: 20,
                      child: Image.network(
                          'https://cdn-icons-png.flaticon.com/512/5709/5709755.png')),
                  Align(
                      alignment: Alignment.center,
                      child: MyTextBox(
                        "Conceitos básicos de Linguagem Dart",
                      )),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                      height: 20,
                      child: Image.network(
                          'https://cdn-icons-png.flaticon.com/512/5709/5709755.png')),
                  Align(
                    alignment: Alignment.center,
                    child: MyTextBox("Stateless e Stateful Widgets"),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                      height: 20,
                      child: Image.network(
                          'https://cdn-icons-png.flaticon.com/512/5709/5709755.png')),
                  Align(
                    alignment: Alignment.center,
                    child: MyTextBox("Exemplos práticos"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:exercicio_tela_bunita/myTextBox.dart';
import 'package:flutter/material.dart';

//eu te odeio vitor gabriel >:((((((((
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
        bottomNavigationBar: BottomAppBar(
          color: Colors.red,
          child: SizedBox(
            height: 40,
            child: Align(
              child: Text ('Venha estudar conosco!', style: TextStyle(fontSize: 12, color: Colors.white)),)
          )
        ),
        appBar: AppBar(
          title: Text("Bem vinde!"),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Image.network(
                  "https://static.vecteezy.com/ti/vetor-gratis/p1/5283012-trabalho-reunindo-empresarios-no-escritorio-conceito-em-desenho-plano-desenho-colegas-discutir-tarefas-de-trabalho-enquanto-sentado-a-mesa-comunicacao-de-negocios-ilustracao-com-pessoas-cena-fundo-vetor.jpg"),
              SizedBox(height: 10),
                DecoratedBox(
                  decoration: BoxDecoration(),
                  child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                          "Bem vindo à aula de desenvolvimento de aplicativos\n para dispositivos móveis!", textAlign: TextAlign.center,)),
                ),
              SizedBox(height: 10),
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
                    child: MyTextBox("Conceitos básicos de Linguagem Dart"),
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

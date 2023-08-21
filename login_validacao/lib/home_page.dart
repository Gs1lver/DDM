import 'package:flutter/material.dart';
import 'package:login_validacao/my_text_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bem vinde!", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(height: 10),
              DecoratedBox(
                decoration: BoxDecoration(),
                child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Bem vindo à aula de desenvolvimento de aplicativos\n para dispositivos móveis!",
                      textAlign: TextAlign.center,
                    )),
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
                    child: MyTextBox("Tristeza"),
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
                    child: MyTextBox("Flutter"),
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
                    child: MyTextBox("Ajuda de indianos"),
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

import 'package:rotas_exercicio/home.dart';
import 'package:rotas_exercicio/myTextBox.dart';
import 'package:flutter/material.dart';
import 'package:rotas_exercicio/my_accountant.dart';
import 'package:rotas_exercicio/sobre.dart';
import 'package:rotas_exercicio/tela_bunita.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      routes: {
        '/' : (context) => MyHome(),
        '/tela_bunita' : (context) => MyTelaBunita(),
        '/contador' : (context) => MyAccountant(),
        '/sobre' :(context) => AboutUs(),
        
      },
    );
  }
}
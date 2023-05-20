import 'package:exercicio_rotas/home.dart';
import 'package:exercicio_rotas/myTextBox.dart';
import 'package:flutter/material.dart';
import 'package:exercicio_rotas/my_accountant.dart';
import 'package:exercicio_rotas/sobre.dart';
import 'package:exercicio_rotas/tela_bunita.dart';

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
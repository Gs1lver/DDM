import 'package:cadastro_listview/view/cadastro_page.dart';
import 'package:cadastro_listview/view/lista_pets_page.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        "/": (context) => const CadastroPage(),
        "/lista": (context) => const ListaPetsPage()
      },
    );
  }
}

import 'package:flutter/material.dart';

class ListaAlunosPage extends StatefulWidget {
  const ListaAlunosPage({super.key});

  @override
  State<ListaAlunosPage> createState() => _ListaAlunosPageState();
}

class _ListaAlunosPageState extends State<ListaAlunosPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alunos"),
        centerTitle: true,
      ),
      // body: ListView.separated(
      //   itemCount: itemCount,
      //   separatorBuilder: separatorBuilder,
      //   itemBuilder: itemBuilder,
      //   )
    );
  }
}
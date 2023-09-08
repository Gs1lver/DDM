import 'package:flutter/material.dart';

class ListaPetsPage extends StatefulWidget {
  const ListaPetsPage({super.key});

  @override
  State<ListaPetsPage> createState() => _ListaPetsPageState();
}

class _ListaPetsPageState extends State<ListaPetsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pets Cadastrados"),
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

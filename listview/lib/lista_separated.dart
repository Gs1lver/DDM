import 'package:flutter/material.dart';
import 'package:listview/list_tile.dart';
import 'package:listview/model/aluno.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Aluno> alunos = [];

  @override
  Widget build(BuildContext context) {

    alunos = [];
    alunos.add(Aluno(name: "Fulano", ra: "123"));
    alunos.add(Aluno(name: "Ciclano", ra: "456"));
    alunos.add(Aluno(name: "Beltrano", ra: "789"));
    alunos.add(Aluno(name: "Maria", ra: "012"));

    return Scaffold(
      appBar: AppBar(
        title: const Text("Alunos"),
        centerTitle: true,
      ),
      body: ListView.separated( 
        itemCount: alunos.length, //a contagem do nº de items da lista é a qntd de repetições que ele irá fazer
        separatorBuilder: (context, index) => const Divider(thickness: 2), //index é o i do for
        itemBuilder: (context, index) {
          return CustomTile(
            title: alunos[index].name,
            subtitle: alunos[index].ra,
            leading: const Icon(Icons.person), 
            trailing: const Icon(Icons.numbers));
        },

      ),
    );
  }
}

//CustomTile(title: "Luanna", subtitle: "19 99821-3472", leading: const Icon(Icons.dark_mode), trailing: const Icon(Icons.sunny)),

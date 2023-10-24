import 'package:consumo_api/model/tarefa.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Api extends StatefulWidget {
  const Api({super.key});

  @override
  State<Api> createState() => _ApiState();
}

class _ApiState extends State<Api> {

  int userId = 0;
  int taskId = 0;
  String title = "";
  bool completed = false;
  Tarefa minhaTarefa = Tarefa();

  Future<void> obterTarefa() async{
    final url = Uri.parse('https://jsonplaceholder.typicode.com/todos/19');
    final response = await http.get(url);

    if(response.statusCode == 200){
      //Successful API call
      final data = response.body;
      Map<String, dynamic> tarefa = jsonDecode(data);
      print(tarefa);
      setState(() {
        userId = (tarefa['userId']);
        taskId = (tarefa['id']);
        title = (tarefa['title']);
        completed = (tarefa['completed']);
      });
    }else{
      //API call failed
      print('Request failed with status: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        ElevatedButton(
          child: const Text("Buscar tarefa"),
          onPressed: () {
            obterTarefa();
          },
        ),
        const SizedBox(height: 10),
        Text("ID do usuário: $userId"),
        Text("ID da tarefa: $taskId"),
        Text("Título da tarefa: $title", textAlign: TextAlign.center,),
        Text("Tarefa completa: $completed"),
      ]),
    );
  }
}

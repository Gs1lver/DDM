import 'package:flutter/material.dart';
import 'package:todo_list/controller/todo_controller.dart';
import 'package:todo_list/model/todo.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  final ToDoController _toDoController = ToDoController();

  final TextEditingController _descriptionController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final listaToDo = ToDoController.getListTodo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Lista de Tarefas", style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //form
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _descriptionController,
                        decoration: InputDecoration(label: Text("Tarefa")),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Adicione uma tarefa!";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        child: const Text("adicionar"),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            String description = _descriptionController.text;
                            ToDo novaTarefa =
                                ToDo(description: description, isDone: false);
                            setState(() {
                              _toDoController.addToDo(novaTarefa);
                            });
                            _descriptionController.clear();
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text(
                                        "Não foi possível adicionar a tarefa!")));
                          }
                        },
                      )
                    ],
                  ),
                ),
              ),

              //listview
              Flexible(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: listaToDo.length,
                  separatorBuilder: (context, int index) => const Divider(
                    thickness: 2,
                  ),
                  itemBuilder: (context, int index) {
                    return ListTile(
                      leading: const Icon(Icons.cookie),
                      title: Text(listaToDo[index].description),
                      trailing: Icon(Icons.check_box_outline_blank)
                    );
                  },
                ),
              ),

              
            ],
          ),
        ),
        bottomNavigationBar:  ElevatedButton(
                child: Text("Limpar lista"),
                onPressed: () {
                  setState(() {
                  _toDoController.clearList();
                  });
                },
              ),
        );
  }
}

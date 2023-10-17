import 'package:todo_list/model/todo.dart';

class ToDoController {
  static List<ToDo> _listToDo = [
    ToDo(description: "oiiii", isDone: false),
    ToDo(description: "tchauuu", isDone: true),
  ];

  static List<ToDo> get getListTodo => _listToDo;
  set listaToDo(value) => _listToDo = value;

  void addToDo(ToDo todo){
    _listToDo.add(todo);
  }

  void clearList(){
    _listToDo.clear();
  }
}
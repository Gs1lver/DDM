class Tarefa {
  int _userId = 0;
  int _taskId = 0;
  String _title = "";
  bool _completed = false;

  Tarefa();

  Tarefa.fromJson(Map<String, dynamic> json)
    : _userId = json['userId'],
      _taskId = json['id'],
      _title = json['title'],
      _completed = json['completed']; 
}
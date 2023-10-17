class ToDo {
  String description;
  bool isDone;

  String get getDescription => description;
  set setDescription(String description) => this.description = description;

  get getIsDone => isDone;
  set setIsDone(isDone) => this.isDone = isDone;

  ToDo({required this.description, required this.isDone});
}

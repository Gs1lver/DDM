class Pet {
  String name;
  int id;

  String get getName => name;
  set setName(String name) => this.name = name;

  get getId => id;
  set setId(id) => this.id = id;

  Pet({required this.name, required this.id});
}

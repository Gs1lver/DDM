class Pet {
  String name;
  String cuidador;

  String get getCuidador => cuidador;
  set setCuidador(String cuidador) => this.cuidador = cuidador;

  String get getName => name;
  set setName(String name) => this.name = name;

  Pet({required this.name, required this.cuidador});
}

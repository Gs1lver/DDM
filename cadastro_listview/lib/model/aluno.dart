class Aluno {
  String name;
  int ra;
  
  get getName => name;

 set setName( name) => this.name = name;

  get getRa => ra;

 set setRa( ra) => this.ra = ra;

  Aluno({required this.name, required this.ra});
}
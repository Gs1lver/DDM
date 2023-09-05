class Aluno {
  String name;
  String ra;

  get getName => this.name;

 set setName( name) => this.name = name;

  get getRa => this.ra;

 set setRa( ra) => this.ra = ra;


  Aluno({required this.name, required this.ra});

}

final contatos = [
  Aluno(name: "Luanna", ra: "(19)99999-9999"),
  Aluno(name: "Isabela", ra: "(19)88888-8888"),
  Aluno(name: "Lara", ra: "(19)77777-7777"),
  Aluno(name: "Davi", ra: "(19)66666-6666"),
  Aluno(name: "Natália", ra: "(19)55555-5555"),
  Aluno(name: "Catarina", ra: "(19)44444-4444"),
  Aluno(name: "Babi", ra: "(19)33333-3333"),
  Aluno(name: "William", ra: "(19)22222-2222"),
];
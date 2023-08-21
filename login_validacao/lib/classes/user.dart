class User{

  String senha;
  String nome;

  //construtor
  User({required this.nome, required this.senha});
}

List<User> users = [
    User(nome: "lisa", senha: "12345"),
    User(nome: "tbasso", senha: "0708"),
    User(nome: "gs1lver", senha: "6789")
];
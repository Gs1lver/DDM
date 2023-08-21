import 'package:login_validacao/classes/user.dart';

class UserRepository{

  List<User> users = [
    User(nome: "lisa", senha: "12345"),
    User(nome: "tbasso", senha: "0708"),
    User(nome: "gs1lver", senha: "6789")
  ];

  UserRepository(this.users);
}
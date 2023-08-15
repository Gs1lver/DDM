import 'package:login_validacao/classes/user.dart';

class UserRepository{

  List<User> _listaUsers = [];

  //construtor
  UserRepository(){
    this._listaUsers = [
      User('isabela', 'isa123'),
      User('luanna', 'lua123'),
    ];
  }

  void mostrarUser(){
    _listaUsers.forEach((User user) => print(user));
  }

  void verificar(User user){
    
  }
}
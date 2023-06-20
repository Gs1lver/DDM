import 'package:ex_modularizacao/classes/cliente.dart';

class ClienteRepository {
  List<Cliente> _listaClientes = [];

  ClienteRepository() {
    this._listaClientes = [];
  }

  void adicionarCliente(Cliente cust) {
    _listaClientes.add(cust);
  }

  void imprimirCliente(){
    for(var i = 0; i < _listaClientes.length; i++){
      print("Nome: ${_listaClientes[i].nome}, Email: ${_listaClientes[i].email}\n");
    }
  }
}

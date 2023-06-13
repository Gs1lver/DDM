import 'package:modularizacao/aluno.dart';

class AlunoRepository{
  //atributo 
  List<Aluno> _listaAlunos = [];

  //construtor
  AlunoRepository(){
    this._listaAlunos = [];
  }

  void adicionar(Aluno al){
    _listaAlunos.add(al);
  }

  void imprimir(){
    for(var i = 0; i < _listaAlunos.length; i++){
      print("RA: ${_listaAlunos[i].ra}, Nome: ${_listaAlunos[i].nome}");
    }
  }
}
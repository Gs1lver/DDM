import 'package:cadastro_listview/model/aluno.dart';

class AlunoRepository {
  static List<Aluno> _listaAlunos = [];

  //getters e setters
  static get getListaAlunos => _listaAlunos;
  set listaAlunos(value) => _listaAlunos = value;

  //métodos
  void adicionarAluno (Aluno aluno) {
    _listaAlunos.add(aluno);
  }
}
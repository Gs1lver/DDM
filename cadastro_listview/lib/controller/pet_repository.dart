import 'package:cadastro_listview/model/pet.dart';

class PetRepository {
  static List<Pet> _listaPets = [
    Pet(name: "Dorinha", cuidador: "Maria de Freitas"),
    Pet(name: "Bolinha", cuidador: "João Gilberto"),
    Pet(name: "Pipoca", cuidador: "José Carrasco"),
    Pet(name: "Destruidor de Mundos", cuidador: "Chiquinha")
  ];

  //getters e setters
  static List<Pet> get getListaPets => _listaPets;
  set listaPets(value) => _listaPets = value;

  //métodos
  void adicionarPet(Pet pet) {
    _listaPets.add(pet);
  }

  static void removerPet(Pet pet){
    _listaPets.remove(pet);
  }
}

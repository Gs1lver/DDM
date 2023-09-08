import 'package:cadastro_listview/model/pet.dart';

class PetRepository {
  static List<Pet> _listaPets = [
    Pet(name: "Dorinha", cuidador: "Maria"),
    Pet(name: "Bolinha", cuidador: "João"),
    Pet(name: "Pipoca", cuidador: "José"),
  ];

  //getters e setters
  static get getListaPets => _listaPets;
  set listaPets(value) => _listaPets = value;

  //métodos
  void adicionarPet(Pet pet) {
    _listaPets.add(pet);
  }
}

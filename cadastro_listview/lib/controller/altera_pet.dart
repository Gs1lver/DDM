import 'package:cadastro_listview/controller/pet_repository.dart';
import 'package:cadastro_listview/model/pet.dart';
import 'package:flutter/material.dart';

class AlteraPet extends StatefulWidget {
  Pet pet;
  int indice;

  AlteraPet({required this.pet, required this.indice, super.key});

  @override
  State<AlteraPet> createState() => _AlteraPetState();
}

class _AlteraPetState extends State<AlteraPet> {
  final PetRepository _petRepository = PetRepository();
  List listaPets = PetRepository.getListaPets;
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _cuidadorController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String texto_sucesso = "";

  void inicializa() {
    _nomeController.text = widget.pet.name;
    _cuidadorController.text = widget.pet.cuidador;
  }

  void msgSucesso() {
    texto_sucesso = "Pet alterado!";
  }

  @override
  Widget build(BuildContext context) {
    inicializa();
    return Scaffold(
      appBar: AppBar(
        title: Text("Altera Pet"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.pets,
                    size: 100,
                  )),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _nomeController,
                          decoration: const InputDecoration(
                            labelText: "Nome",
                            hintText: "Altere o nome de seu pet",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Digite o nome do pet!";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        TextFormField(
                          controller: _cuidadorController,
                          decoration: const InputDecoration(
                            labelText: "Cuidador",
                            hintText: "Altere o nome do cuidador do pet",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Digite o nome do cuidador!";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          String nome = _nomeController.text;
                          String cuidador = _cuidadorController.text;
                          Pet a = new Pet(name: nome, cuidador: cuidador);
                          listaPets[widget.indice] = a;
                          Navigator.pop(context);
                        }
                      },
                      child: Text("Alterar")),
                  Padding(padding: EdgeInsets.all(4.0)),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Voltar"))
                ],
              ),
              Text(texto_sucesso,
                  style: TextStyle(color: Colors.red, fontSize: 10))
            ],
          ),
        ),
      ),
    );
  }
}

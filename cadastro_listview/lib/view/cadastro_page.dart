import 'package:cadastro_listview/controller/pet_repository.dart';
import 'package:cadastro_listview/model/pet.dart';
import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final PetRepository _petRepository = PetRepository();

  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _cuidadorController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Cadastro de Pets"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/lista");
              },
              icon: const Icon(Icons.list_alt_sharp,))
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //imagem
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(Icons.pets, size: 100, color: Theme.of(context).primaryColor,)),

              //cadastro
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 16),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _nomeController,
                          decoration: const InputDecoration(
                            labelText: "Nome",
                            hintText: "Digite o nome do seu pet",
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
                            hintText: "Digite o nome do cuidador do pet",
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
              ElevatedButton.icon(
                label: const Text("Cadastrar Pet"),
                icon: const Icon(Icons.add),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    String nome = _nomeController.text;
                    String cuidador = _cuidadorController.text;

                    Pet pet = Pet(name: nome, cuidador: cuidador);
                    _petRepository.adicionarPet(pet);

                    limparCampos();
                    mostrarSucesso();
                    _formKey.currentState!.reset();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void mostrarSucesso() {
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Pet cadastrado com sucesso!")));
  }

  void limparCampos() {
    _nomeController.clear();
    _cuidadorController.clear();
  }
}

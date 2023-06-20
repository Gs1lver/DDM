import 'package:flutter/material.dart';
import 'package:ex_modularizacao/classes/cliente.dart';
import 'package:ex_modularizacao/repositories/clientes_repository.dart';

class Clientes extends StatefulWidget {
  const Clientes({super.key});

  get nome => null;

  @override
  State<Clientes> createState() => _ClientesState();
}

class _ClientesState extends State<Clientes> {
  String nome = "";
  String email = "";
  TextEditingController campoNome = TextEditingController();
  TextEditingController campoEmail = TextEditingController();
  ClienteRepository listaCl = ClienteRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text(
            "Cadastro de clientes",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: const InputDecoration(
                      labelText: "Nome",
                      labelStyle: TextStyle(color: Colors.green),
                    ),
                    controller: campoNome,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.green)),
                    controller: campoEmail,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      nome = campoNome.text;
                      email = campoEmail.text;
                      Cliente cli = Cliente(nome, email);
                      listaCl.adicionarCliente(cli);
                      listaCl.imprimirCliente();
                      setState(() {});
                    },
                    child: Text("Cadastrar"),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

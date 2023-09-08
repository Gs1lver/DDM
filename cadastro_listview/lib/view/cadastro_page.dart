import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.red[800],
        title: const Text("Cadastro de Pets"),
        actions: [
          IconButton(onPressed: () {
          Navigator.pushNamed(context, "/lista");
        },
        icon: const Icon(Icons.list_alt_sharp))],
      ),
      body: SingleChildScrollView(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
      
            //imagem
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(Icons.pets, size: 100, color: Colors.red[800])
            ),
      
            //cadastro
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: "Nome",
                            hintText: "Digite o nome do seu pet",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: "ID",
                            hintText: "Digite o id do pet",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton.icon(onPressed: (){}, label: const Text("Cadastrar Pet"), icon: const Icon(Icons.add),)
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  int ra = 0;
  String nome = "";
  TextEditingController campoRa = TextEditingController();
  TextEditingController campoNome = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Validação de campos"),
        ),
        body: Center(
          child: Column(
            children: [
              Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        controller: campoRa,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("O RA não pode ser vazio");
                          } else {
                            if (int.parse(campoRa.text) < 10) {
                              return ("O RA deve ser maior que 10");
                            }
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: "RA",
                          prefixIcon: Icon(Icons.numbers_outlined),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                      ),
                      SizedBox(height: 16,),
                      TextFormField(
                        keyboardType: TextInputType.name,
                        controller: campoNome,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("O nome não pode ser vazio!");
                          } else {
                            if (campoNome.text.length < 5) {
                              return ("O nome precisa ter mais qu 5 caracteres");
                            }
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            labelText: "Nome",
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                            )),
                      )
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    ra = int.parse(campoRa.text);
                    nome = campoNome.text;
                    setState(() {});
                    mostrarLanchinho();
                  }
                },
                child: const Text("Cadastrar"),
              ),
              Spacer(),
              Text("Valores digitados: $ra, $nome"),
            ],
          ),
        ));
  }

  void mostrarLanchinho() {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Aluno cadastrado com sucesso')));
  }
}

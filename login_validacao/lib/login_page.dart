
import 'package:flutter/material.dart';
import 'package:login_validacao/model/user_repository.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    String nome = "";
    String senha = "";
    TextEditingController campoNome = TextEditingController();
    TextEditingController campoSenha = TextEditingController();
    GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Oi'),
              Form(
                key: formKey,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: campoNome,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("O RA não pode ser vazio");
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: "Nome",
                          prefixIcon: const Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      TextFormField(
                        controller: campoSenha,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("O RA não pode ser vazio");
                          } else {
                            if (campoSenha.text.length < 3) {
                              return ("A senha deve conter mais que 3 caracteres");
                            }
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: "Senha",
                          prefixIcon: const Icon(Icons.fingerprint),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 40,),

              ElevatedButton(   
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    senha = campoSenha.text;
                    nome = campoNome.text;
                    //metodo verificar na lista do repository
                  }
                }, 
                child: const Text("Entrar"),
                ),
              ElevatedButton(
                onPressed: (){
                  mostrarUser();
                }, 
                child: const Text("teste"))
            ],
          ),
        ),
    
    );
  }
}

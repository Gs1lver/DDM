import 'package:flutter/material.dart';
import 'package:login_validacao/home_page.dart';

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
              SizedBox(height: 20,),
              Image.network("https://cdn-icons-png.flaticon.com/512/181/181534.png", width: 200, height: 200),
              const Text("Log-In", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
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
                            return ("Nome não pode ser vazio");
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
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Senha não pode ser vazio");
                          } else {
                            if (campoSenha.text.length < 4) {
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                  /*if (formKey.currentState!.validate()) {
                    senha = campoSenha.text;
                    nome = campoNome.text;
                    //metodo verificar na lista do repository
                  }*/
                }, 
                child: const Text("Entrar"),
                )
            ],
          ),
        ),
    
    );
  }
}

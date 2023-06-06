// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyText extends StatefulWidget {
  const MyText({super.key});

  @override
  State <MyText> createState() => _MyTextState();
}

class  _MyTextState extends State<MyText> {
  String textoDigitado = '';
  TextEditingController campoTexto = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: campoTexto,
              onChanged: (value){
                print(value);
              },
              style: TextStyle(
                color: Colors.indigoAccent,
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.purple[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)
                  )
              ),
            ),
            ElevatedButton(onPressed: (){
              textoDigitado = campoTexto.text; 
              setState(() {
                
              });
            },
            child: Text("ok")
            ),
            ElevatedButton(onPressed: () {
              textoDigitado=""; //seta a variavel pra vazia 
              campoTexto.clear(); //limpa o campo
            },
             child: Text("Limpar")),
            Text("Você digitou $textoDigitado"),
          ],
        )
      )
    );
  }
}
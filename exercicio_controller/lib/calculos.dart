// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Calculos extends StatefulWidget {
  const Calculos({super.key});

  @override
  State<Calculos> createState() => _CalculosState();
}

class _CalculosState extends State<Calculos> {
  String numero1 = "";
  String numero2 = "";
  double resultado = 0;
  TextEditingController campo1 = TextEditingController();
  TextEditingController campo2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Operações para aprendizado do uso do Widget TextField",
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            SizedBox(height: 30),
            TextField(
              controller: campo1,
              onChanged: (value) {
                print(value);
              },
              //style
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.deepPurple[50],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0))),
            ),
            SizedBox(height: 30),
            TextField(
              controller: campo2,
              onChanged: (value) {
                print(value);
              },
              //style
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.deepPurple[0],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0))),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      double numero1 = double.parse(campo1.text);
                      double numero2 = double.parse(campo2.text);
                      somar(numero1, numero2);
                      setState(() {});
                    },
                    child: Text("+")),
                ElevatedButton(
                    onPressed: () {
                      double numero1 = double.parse(campo1.text);
                      double numero2 = double.parse(campo2.text);
                      subtrair(numero1, numero2);
                      setState(() {});
                    },
                    child: Text("-")),
                ElevatedButton(
                    onPressed: () {
                      double numero1 = double.parse(campo1.text);
                      double numero2 = double.parse(campo2.text);
                      multiplicar(numero1, numero2);
                      setState(() {});
                    },
                    child: Text("*")),
                ElevatedButton(
                    onPressed: () {
                      double numero1 = double.parse(campo1.text);
                      double numero2 = double.parse(campo2.text);
                      dividir(numero1, numero2);
                      setState(() {});
                    },
                    child: Text("/")),
                ElevatedButton(
                    onPressed: () {
                      limparCampos();
                      setState(() {});
                    },
                    child: Text("CE")),
              ],
            ),
            SizedBox(height: 30),
            Text("Seu resultado foi: ${resultado.toStringAsFixed(2)}",
                style: TextStyle(fontSize: 15))
          ],
        ),
      ),
    ));
  }

  double somar(numero1, numero2) {
    resultado = numero1 + numero2;
    return resultado;
  }

  double subtrair(numero1, numero2) {
    resultado = numero1 - numero2;
    return resultado;
  }

  double dividir(numero1, numero2) {
    resultado = numero1 / numero2;
    return resultado;
  }

  double multiplicar(numero1, numero2) {
    resultado = numero1 * numero2;
    return resultado;
  }

  void limparCampos() {
    resultado = 0;
    numero1 = "";
    numero2 = "";
    campo1.clear();
    campo2.clear();
  }
}

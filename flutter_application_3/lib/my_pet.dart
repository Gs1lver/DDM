import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyPet extends StatelessWidget {
  const MyPet(this.nome, this.cor, this.tamanhoTexto, this.tamanhoBorda, {super.key});

//atributos
final String nome;
final Color cor;
final double tamanhoTexto;
final double tamanhoBorda;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(color:cor),
        child: Padding(
          padding: EdgeInsets.all(tamanhoBorda),
          child: Text(nome, style: TextStyle(fontSize: tamanhoTexto)),
        ));
  }
}

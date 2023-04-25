// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  // Atributos
  final String nome;
  final Color cor;
  final double fonte;

  const MyWidget(this.nome, this.cor, this.fonte, {super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: cor),
      child: Text(nome, style: TextStyle(fontSize: fonte)),
    );
  }
}

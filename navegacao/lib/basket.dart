import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Basket extends StatelessWidget {
  const Basket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Basket"),
            ElevatedButton(
              onPressed: (){
              Navigator.pushNamed(context, '/');
            }, 
            child: Text("Voltar"))
        ]),
      )
    );
  }
}
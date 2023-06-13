import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Operações e Conversões"),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, '/calculos');
            },
            icon: Icon(Icons.analytics)
          )
        ],  
      ),
      body: const Center(
        child: Text('Hello World'),
      )
    );
  }
}
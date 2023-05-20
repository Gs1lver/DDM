// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 48,
                backgroundImage: NetworkImage(
                    "https://cdn.discordapp.com/attachments/1050930218170318889/1109597554229915748/344221992_777861720637227_8298152014751517946_n.png"),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.red[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                          "Isabela Silvestre Rodrigues, 17 anos de idade.\nProgramadora frontend e mobile.\nEstudante do terceiro ano do curso de Desenvolvimento de Sistemas no Colégio Técnico de Limeira.\nAtualmente trabalhando no projeto: Commandee 🍔",
                          textAlign: TextAlign.center),
                    )),
              ),
              CircleAvatar(
                radius: 48,
                backgroundImage: NetworkImage(
                    "https://pps.whatsapp.net/v/t61.24694-24/316485045_1244927223101006_1150106875316726973_n.jpg?ccb=11-4&oh=01_AdQs5teJK_T3BjlCkpg0Xgc9m3EIzGdG7qwolNG_CHPLSQ&oe=64762874"),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.red[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                          "Luanna Sachinelli Paggiaro, 17 anos de idade.\nProgramadora frontend e mobile.\nEstudante do terceiro ano do curso de Desenvolvimento de Sistemas no Colégio Técnico de Limeira.\nAtualmente trabalhando no projeto AccessCity 🚌",
                          textAlign: TextAlign.center),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

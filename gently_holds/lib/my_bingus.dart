import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyBingus extends StatefulWidget { //extende Widget que muda de estado
  const MyBingus({super.key}); //retorna a chave da super classe (construtor)

  @override 
  State<MyBingus> createState() => _MyBingusState();  //sobrescrita do método createState da classe StatefulWidget
}

class _MyBingusState extends State<MyBingus> { // classe que muda de estado que extende a classe State
  
  String linkImagem1 = "https://i.pinimg.com/736x/a7/b5/7a/a7b57a1c9b9cd3edaa5be63ff279b1ee.jpg";
  String message1 = "no Bingus";
  String msgBtn1 = "segure o cato";

  @override 
  Widget build(BuildContext context) {  //é aqui que programamos o que vai aparecer na tela
    return Scaffold(
      body: Center(
        child: Column (
          children: [
            Image.network(linkImagem1),
            Text(message1),
            ElevatedButton(
              onPressed: (){
                changeCat(); //chama a função que muda o estado
                setState(() {
                  
                }); //atualiza a tela
              },
               style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 241, 147, 197)
               ) ,
               child: Text(msgBtn1)
            )
          ]
        )
      )
    );
  }

  void changeCat(){
    if(message1 == "no Bingus")
    {
      message1 = "Bingus";
      linkImagem1 = 'https://wompampsupport.azureedge.net/fetchimage?siteId=7575&v=2&jpgQuality=100&width=700&url=https%3A%2F%2Fi.kym-cdn.com%2Fphotos%2Fimages%2Fnewsfeed%2F002%2F572%2F465%2Fb9e.jpg';
      msgBtn1 = "solte o cato";
    }
    else
    {
      message1 = "no Bingus";
      linkImagem1 = 'https://i.pinimg.com/736x/a7/b5/7a/a7b57a1c9b9cd3edaa5be63ff279b1ee.jpg';
      msgBtn1 = "segure o cato";
    }
  }
}
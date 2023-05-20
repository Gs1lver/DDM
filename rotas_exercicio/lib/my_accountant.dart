// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'contador.dart';

class MyAccountant extends StatefulWidget {
  const MyAccountant({super.key});

  @override
  State<MyAccountant> createState() => MyAccountantState();
}

class MyAccountantState extends State<MyAccountant> {
  int msgBtn = 0;
  int msgTxt = 0;
  
  Contador cont = Contador();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.network(
              'https://cdn-icons-png.flaticon.com/512/1552/1552545.png',
              width: 100,
              height: 100),
          SizedBox(height: 2),
          DecoratedBox(
            decoration: BoxDecoration(),
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Text("Contador usando Stateful Widget"),
            ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    cont.subtrair();
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      shape: CircleBorder()),
                  child: Text("-")),

                  SizedBox(height: 10),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        cont.getContador().toString(),
                        )
                  )),

                  ElevatedButton(
                  onPressed: () {
                    cont.somar();
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      shape: CircleBorder()),
                  child: Text("+"))
            ],
          ),
          SizedBox(height: 10),
          DecoratedBox(
            decoration: BoxDecoration(),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text("Número no contador: " + cont.getContador().toString()),
            ),
          )
        ]),
      ),
    );
  }
}


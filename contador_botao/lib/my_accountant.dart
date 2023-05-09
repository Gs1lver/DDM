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
      backgroundColor: Color.fromARGB(255, 141, 182, 178),
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
              child: Text("Accountant using Stateful Widget"),
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
                      primary: Colors.blue,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      shape: CircleBorder()),
                  child: Text("-")),

                  SizedBox(height: 10),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 210, 209, 209),
                      borderRadius: BorderRadius.circular(80)),
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
                      primary: Colors.blue,
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
              child: Text("Number on the counter: " + cont.getContador().toString()),
            ),
          )
        ]),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:navegacao/favorite.dart';
import 'package:navegacao/person.dart';

import 'basket.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/' : (context) => MyHomePage(),
        '/favorite' : (context) => Favorite(),
        '/basket' : (context) => Basket(),
        '/person' : (context) => Person()
      },
    );
  }
}

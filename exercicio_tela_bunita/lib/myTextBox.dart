import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTextBox extends StatelessWidget {
  const MyTextBox(this.texto, {super.key});

  final String texto;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Text(texto),
      ),
    );
  }
}
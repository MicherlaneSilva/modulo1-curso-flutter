import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Texto extends StatelessWidget {
  final String texto;

  Texto(this.texto);

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(
          fontSize: 25.0,
          color: Colors.purple[800],
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          fontFamily: "Times New Roman"),
    );
  }
}

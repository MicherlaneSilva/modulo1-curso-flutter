import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Campos extends StatelessWidget {
  final String texto;
  final TextEditingController controllerText;
  Campos(this.texto, this.controllerText);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controllerText,
      style: TextStyle(fontSize: 20.0),
      decoration: InputDecoration(labelText: texto),
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.numberWithOptions(
        decimal: true,
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final void Function() resultado;

  Botao(this.resultado);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(80.0),
      child: ElevatedButton(
        onPressed: resultado,
        child: Text(
          "CALCULAR",
          style: TextStyle(fontSize: 20.0),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
        ),
      ),
    );
  }
}

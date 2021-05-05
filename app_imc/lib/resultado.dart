import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './textos.dart';

// ignore: must_be_immutable
class Resultado extends StatefulWidget {
  double altura;
  double peso;
  String resultado = "";

  Resultado(this.altura, this.peso);

  @override
  ResultadoState createState() => ResultadoState();
}

class ResultadoState extends State<Resultado> {
  double calcularImc() {
    double imc = widget.peso / (widget.altura * widget.altura);

    setState(() {
      if (imc < 18.6)
        widget.resultado += "Abaixo do peso";
      else if (imc < 25.0)
        widget.resultado += "Peso ideal";
      else if (imc < 30.0)
        widget.resultado += "Levemente acima do peso";
      else if (imc < 35.0)
        widget.resultado += "Obesidade Grau I";
      else if (imc < 40.0)
        widget.resultado += "Obesidade Grau II";
      else
        widget.resultado += "Obesidade Grau IIII";
    });

    return imc;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          Container(
            width: 400.0,
            height: 300.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.purple,
            ),
            child: Center(
              child: Text(
                calcularImc().toStringAsPrecision(4),
                style: TextStyle(
                  fontSize: 100.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            width: 400.0,
            height: 300.0,
            padding: const EdgeInsets.all(25.0),
            child: Center(
              child: Column(
                children: [
                  Texto("Resultado"),
                  Texto(widget.resultado.toUpperCase()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

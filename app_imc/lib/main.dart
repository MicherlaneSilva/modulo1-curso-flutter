import './campos.dart';
import 'package:flutter/material.dart';
import './resultado.dart';
import './botao.dart';

void main() => runApp(ImcApp());

class ImcAppState extends State<ImcApp> {
  final TextEditingController alturaController = new TextEditingController();
  final TextEditingController pesoController = new TextEditingController();
  double altura = 0;
  double peso = 0;
  bool resultado = true;

  void exibirResultado() {
    setState(() {
      altura = double.parse(alturaController.text);
      peso = double.parse(pesoController.text);
      resultado = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("CÁLCULO IMC")),
          backgroundColor: Colors.purple,
        ),
        body: resultado
            ? Padding(
                padding: const EdgeInsets.all(25.0),
                child: Form(
                  child: ListView(
                    children: <Widget>[
                      Campos("Altura", alturaController),
                      Campos("Peso", pesoController),
                      Botao(exibirResultado),
                    ],
                  ),
                ),
              )
            : Resultado(altura, peso),
      ),
    );
  }
}

class ImcApp extends StatefulWidget {
  @override
  State<ImcApp> createState() {
    return ImcAppState();
  }
}

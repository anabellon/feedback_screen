// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:feedback_screen/radioclass.dart';
import 'package:flutter/material.dart';

import 'botaoenviar.dart';
import 'caixatexto.dart';

const String titulo = "Feedback";

class Tela extends StatefulWidget {
  const Tela({super.key});
  @override
  TelaState createState() => TelaState();
}

class TelaState extends State<Tela> {
  final TextEditingController _controlador = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titulo,
        ),
      ),
      body: SingleChildScrollView(
        // se ajusta com um scroll para telas menores ou espaços menores.
        child: Column(
          children: <Widget>[
            RadioClass(),
            CaixaTexto(
              controladorCampoTexto: _controlador,
            ),
            BotaoEnviar(
              valor: _controlador.text,
            ),
          ],
        ),
      ),
    );
  }
}

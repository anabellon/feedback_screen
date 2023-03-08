import 'package:feedback_screen/radioclass.dart';
import 'package:flutter/material.dart';

import 'caixatexto.dart';

class Tela extends StatefulWidget {
  @override
  TelaState createState() => TelaState();
}

class TelaState extends State<Tela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feedback"),
      ),
      body: SingleChildScrollView(
        // se ajusta com um scroll para telas menores ou espaços menores.
        child: Column(
          children: <Widget>[
            //Container(child: Text("Teste")),
            RadioClass(),
            CaixaTexto(),
          ],
        ),
      ),
    );
  }
}

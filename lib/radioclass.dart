import 'package:flutter/material.dart';

class RadioClass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RadioClassState();
  }
}

enum Satisfacao { excelente, boa, regular, ruim }

class _RadioClassState extends State<RadioClass> {

  String? _opcao;

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            "Sua opinião é importante para nós!\nComo está a experiência com nosso aplicativo?",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Divider(),
        RadioListTile(
          fillColor: MaterialStateColor.resolveWith((states) => Colors.green.shade400),
          title: Text("Excelente"),
          value: "excelente",
          groupValue: _opcao,
          onChanged: (value) {
            setState(() {
              _opcao = value!;
            },);
          },
        ),
        RadioListTile(
          fillColor: MaterialStateColor.resolveWith((states) => Colors.blue.shade400),
          title: Text("Boa"),
          value: "boa",
          groupValue: _opcao,
          onChanged: (value) {
            setState(() {
              _opcao = value!;
            });
          },
        ),
        RadioListTile(
          fillColor: MaterialStateColor.resolveWith((states) => Colors.amber.shade400),
          title: Text("Regular"),
          value: "regular",
          groupValue: _opcao,
          onChanged: (value) {
            setState(() {
              _opcao = value!;
            });
          },
        ),
        RadioListTile(
          fillColor: MaterialStateColor.resolveWith((states) => Colors.red.shade400),
          title: Text("Ruim"),
          value: "ruim",
          groupValue: _opcao,
          onChanged: (value) {
            setState(() {
              _opcao = value!;
            });
          },
        ),
        const SizedBox(height: 25),
        /*Text(_opcao == "boa"
            ? 'Agradecemos a avaliacão!'
            : 'Agradecemos a avaliacão! :)')*/
      ],
    );
  }
}

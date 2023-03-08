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
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            "Sua opinião é importante para nós!\nComo está sua experiência com nosso aplicativo?",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        Divider(),
        RadioListTile(
          title: Text("Excelente"),
          value: "excelente",
          groupValue: _opcao,
          onChanged: (value) {
            setState(() {
              _opcao = value!;
            });
          },
        ),
        RadioListTile(
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

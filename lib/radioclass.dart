import 'package:feedback_screen/radiolist.dart';
import 'package:flutter/material.dart';

const String titulo =
    "Sua opinião é importante para nós!\nComo está a experiência com nosso aplicativo?";

class RadioClass extends StatefulWidget {
  const RadioClass({super.key});

  @override
  State<StatefulWidget> createState() {
    return _RadioClassState();
  }
}

class _RadioClassState extends State<RadioClass> {
  String? _opcao;

  @override
  Widget build(BuildContext context) {
    final opcoes = ["Excelente", "Boa", "Regular", "Ruim"];
    final arraycolors = [
      Colors.green,
      Colors.lightBlueAccent,
      Colors.amber,
      Colors.red
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            titulo,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        const Divider(),
        SizedBox(
          width: 200,
          child: ListView.builder(
            physics: const ScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: opcoes.length,
            itemBuilder: (context, index) {
              final opcao = opcoes[index];
              return RadioList(
                color: arraycolors[index],
                title: opcao,
                value: opcao.toLowerCase(),
                group: _opcao,
                function: (value) {
                  setState(
                    () {
                      _opcao = value!.toString();
                      debugPrint(_opcao);
                    },
                  );
                },
              );
            },
          ),
        ),
        const SizedBox(height: 25),
      ],
    );
  }
}

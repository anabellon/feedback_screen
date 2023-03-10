import 'package:flutter/material.dart';

const String textoFeedback = "Enviar Feedback";
const String textoAgradecimento = "Agradecemos seu Feedback";
const String textoFechar = "Fechar";

class BotaoEnviar extends StatefulWidget {
  const BotaoEnviar({super.key, required this.valor});
  final String valor;

  @override
  State<StatefulWidget> createState() {
    return _BotaoEnviarState();
  }
}

class _BotaoEnviarState extends State<BotaoEnviar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(height: 28),
        ElevatedButton(
          onPressed: () {
            debugPrint(widget.valor);
            _eventoClick(context);
          },
          child: const Text(
            textoFeedback,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }

  void _eventoClick(BuildContext context) {
    //onPressed
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            textoAgradecimento,
            textAlign: TextAlign.center,
          ),
          content: const SingleChildScrollView(
            child: Icon(
              Icons.sentiment_very_satisfied_rounded,
              color: Colors.amber,
              size: 50.0,
            ),
          ),
          actions: <Widget>[
            // define os botões na base do dialogo
            ElevatedButton(
              child: const Text(
                textoFechar,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

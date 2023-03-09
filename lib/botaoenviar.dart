
import 'package:flutter/material.dart';

class BotaoEnviar extends StatefulWidget{
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
            onPressed: () => _eventoClick(context),
            child: const Text("Enviar Feedback",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      );
  }

  void _eventoClick (BuildContext context){
    //onPressed
    showDialog(
    context:  context,
    builder:  (BuildContext context) {
      return AlertDialog(
        title: new Text(
          "Agradecemos seu Feedback",
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
          child: new Text("Fechar"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],);
    },
  );
  }
}
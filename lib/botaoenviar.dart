
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
            //style: style,
            onPressed: () {},
            child: const Text("Enviar feedback",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      );
  }
}
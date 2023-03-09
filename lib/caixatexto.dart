import 'package:flutter/material.dart';

class CaixaTexto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: TextField(
        keyboardType: TextInputType.multiline,
        maxLength: 400,
        maxLines: null, //quebra de linha
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          filled: true,
          fillColor: Colors.white54,
          labelText: "Possui sugestões de melhorias?",
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          prefixIcon: Icon(Icons.rate_review),
          hintMaxLines: 3,
          hintText: "Possui sugestões de melhorias?\nNos conte aqui.",
          hintStyle: TextStyle(color: Colors.grey.shade600),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

const String textoSugestao = "Possui sugestões de melhorias?";
const String textoHint = "Possui sugestões de melhorias?\nNos conte aqui.";

class CaixaTexto extends StatefulWidget {
  const CaixaTexto({
    super.key,
    required this.controladorCampoTexto,
  });
  final TextEditingController controladorCampoTexto;

  @override
  State<StatefulWidget> createState() {
    return _CaixaTextoState();
  }
}

class _CaixaTextoState extends State<CaixaTexto> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        controller: widget.controladorCampoTexto,
        keyboardType: TextInputType.multiline,
        maxLength: 400,
        minLines: 2,
        maxLines: 6, //quebra de linha
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          filled: true,
          fillColor: Colors.white54,
          labelText: textoSugestao,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          prefixIcon: const Icon(Icons.rate_review),
          hintMaxLines: 3,
          hintText: textoHint,
          hintStyle: TextStyle(color: Colors.grey.shade600),
        ),
      ),
    );
  }
}

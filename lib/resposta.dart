import 'package:flutter/material.dart';
import 'package:projeto_perguntas_1/botaoAzul.dart';

class Resposta extends StatelessWidget {
  final String _texto;
  final Function() _onPressed;


  Resposta(this._texto, this._onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: BotaoAzul(_onPressed, _texto)
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_perguntas_1/botaoAzul.dart';

class Resultado  extends StatelessWidget {
  final int _pontuacao;
  final Function() _reiniciarQuestionario;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Text(
            'Parabéns você fez $_pontuacao pontos!!!',
            style: const TextStyle(fontSize: 28)
            ),
          ),
          BotaoAzul(_reiniciarQuestionario, 'Reiniciar Questionário')
        ],
        ),
      );
  }

  const Resultado(this._pontuacao, this._reiniciarQuestionario);
}

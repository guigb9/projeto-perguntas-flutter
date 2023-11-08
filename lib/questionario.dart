import 'package:flutter/cupertino.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final String _pergunta;
  final List<Map<String, Object>> _respostas;
  final void Function(int ponto) _onpressed;

  const Questionario(this._pergunta, this._respostas, this._onpressed);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Questao(_pergunta),
          ..._respostas.map((resposta) => Resposta(resposta.cast()['texto'],
                  () => _onpressed(resposta.cast()['pontuacao']))
          )
      ],
    );
  }
}

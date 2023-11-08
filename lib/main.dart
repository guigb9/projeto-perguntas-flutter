import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => (runApp(new PerguntaApp()));

class _PerguntaAppState extends State<PerguntaApp> {
  int _perguntaSelecionada = 0;
  int _pontuacao = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'resposta': [
        { 'texto' : 'Azul' , 'pontuacao': 6 },
        { 'texto' : 'Preto' , 'pontuacao': 10 },
        { 'texto' : 'Vermelho' , 'pontuacao': 9 },
        { 'texto' : 'Amarelo' , 'pontuacao': 5 }
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'resposta': [
        {'texto': 'Gato' , 'pontuacao': 9 },
        {'texto': 'Cachorro' , 'pontuacao': 10 },
        {'texto': 'Macaco' , 'pontuacao': 6 },
        {'texto': 'Passarinho' , 'pontuacao': 4 }
      ],
    }
  ];

  void _responder(int pontuacao) {
    setState(() {
      if(temPerguntaSelecionada) {
        _pontuacao+=pontuacao;
        _perguntaSelecionada++;
      }
    });
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacao = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> _respostas = temPerguntaSelecionada ?
    _perguntas[_perguntaSelecionada].cast()['resposta'] : [];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Perguntas!'),
            ),
            body: temPerguntaSelecionada ?
            Questionario(_perguntas[_perguntaSelecionada].cast()['texto'], _respostas, _responder)
                : Resultado(_pontuacao, _reiniciarQuestionario)
        )
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return new _PerguntaAppState();
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BotaoAzul extends StatelessWidget {
  final Function() _onpressed;
  final String _texto;
  const BotaoAzul(this._onpressed, this._texto);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _onpressed,
      style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(fontSize: 20, color: Colors.white),
          backgroundColor: Colors.blueAccent
      ),
      child: Text(_texto,
          style: const TextStyle(fontSize: 26)
      ),
    );
  }
}

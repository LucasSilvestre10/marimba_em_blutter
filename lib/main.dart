import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MarimbaApp());

void tocarSom(int numeroSom) {
  final player = AudioCache();
  player.play('nota$numeroSom.wav');
}

Expanded criarBotao({Color cor, int nota}) {
  return Expanded(
    child: TextButton(
        onPressed: () {
          tocarSom(nota);
        },
        style: TextButton.styleFrom(backgroundColor: cor),
        child: null),
  );
}

class MarimbaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                criarBotao(cor: Colors.blue, nota: 1),
                criarBotao(cor: Colors.red, nota: 2),
                criarBotao(cor: Colors.green, nota: 3),
                criarBotao(cor: Colors.orange, nota: 4),
                criarBotao(cor: Colors.grey, nota: 5),
                criarBotao(cor: Colors.purple, nota: 6),
                criarBotao(cor: Colors.pink, nota: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

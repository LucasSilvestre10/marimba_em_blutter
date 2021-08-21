import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MarimbaApp());

void tocarSom(int numeroSom) {
  final player = AudioCache();
  player.play('nota$numeroSom.wav');
}

void criarBotao() {
  Expanded(
    child: TextButton(
        onPressed: () {
          tocarSom(1);
        },
        style: TextButton.styleFrom(backgroundColor: Colors.red),
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
              children: <Widget>[],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int num){
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded expandKey(Color color, int sound){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(sound);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              expandKey(Colors.amber[100], 1),
              expandKey(Colors.amber[200], 2),
              expandKey(Colors.amber[300], 3),
              expandKey(Colors.amber[400], 4),
              expandKey(Colors.amber[500], 5),
              expandKey(Colors.amber[600], 6),
              expandKey(Colors.amber[700], 7),
            ],
          ),
        ),
      ),
    );
  }
}

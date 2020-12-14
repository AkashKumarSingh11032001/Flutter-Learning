import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(
    XylophoneApp(),
  );
}

class XylophoneApp extends StatelessWidget {
  Expanded buildButton({Color color, int Sound}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          note(Sound);
        },
      ),
    );
  }

  void note(int noteNo) {
    final player = AudioCache();
    player.play('note$noteNo.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(child: Text('Xylophone')),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildButton(color: Colors.red, Sound: 1),
              buildButton(color: Colors.pinkAccent, Sound: 2),
              buildButton(color: Colors.yellowAccent, Sound: 3),
              buildButton(color: Colors.orange, Sound: 4),
              buildButton(color: Colors.greenAccent, Sound: 5),
              buildButton(color: Colors.indigo, Sound: 6),
              buildButton(color: Colors.purple, Sound: 7),
            ],
          ),
        ),
      ),
    );
  }
}

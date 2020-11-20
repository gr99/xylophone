import 'package:flutter/material.dart';

// import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MaterialApp(
    home: xylophone(),
  ));
}

class xylophone extends StatefulWidget {
  @override
  _xylophoneState createState() => _xylophoneState();
}

class _xylophoneState extends State<xylophone> {
  Widget playSound({int n, Color name}) {
    final player = AudioCache();
    return Expanded(
      child: FlatButton(
        onPressed: () {
          setState(
            () {
              player.play('note$n.wav');
            },
          );
        },
        color: name,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          playSound(n: 1, name: Colors.red),
          playSound(n: 2, name: Colors.lightGreenAccent),
          playSound(n: 3, name: Colors.orange),
          playSound(n: 4, name: Colors.deepOrange),
          playSound(n: 5, name: Colors.purple),
          playSound(n: 6, name: Colors.blueAccent),
          playSound(n: 7, name: Colors.yellow),
        ],
      )),
    );
  }
}

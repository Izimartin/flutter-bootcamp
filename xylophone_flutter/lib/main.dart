import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    AudioPlayer p = AudioPlayer();
    p.play(
      AssetSource('note$soundNumber.wav'),
    );
  }

  Expanded buildKey(int soundNumber, Color color) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(.playSound(1), Colors.red),
              buildKey(.playSound(2), Colors.orange),
              buildKey(.playSound(3), Colors.yellow),
              buildKey(.playSound(4), Colors.green),
              buildKey(.playSound(5), Colors.teal),
              buildKey(.playSound(6), Colors.blue),
              buildKey(.playSound(7), Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

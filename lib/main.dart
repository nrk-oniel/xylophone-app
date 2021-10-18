import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playAudio(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(int soundNumber, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playAudio(soundNumber);
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
            children: [
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.red,
              //     onPressed: () {
              //       playAudio(1);
              //     },
              //   ),
              // ),
              buildKey(1, Colors.red),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.orange,
              //     onPressed: () {
              //       playAudio(2);
              //     },
              //   ),
              // ),
              buildKey(2, Colors.orange),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.yellow,
              //     onPressed: () {
              //       playAudio(3);
              //     },
              //   ),
              // ),
              buildKey(3, Colors.yellow),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.green,
              //     onPressed: () {
              //       playAudio(4);
              //     },
              //   ),
              // ),
              buildKey(4, Colors.green),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.teal,
              //     onPressed: () {
              //       playAudio(5);
              //     },
              //   ),
              // ),
              buildKey(5, Colors.teal),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.blue,
              //     onPressed: () {
              //       playAudio(6);
              //     },
              //   ),
              // ),
              buildKey(6, Colors.blue),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.purple,
              //     onPressed: () {
              //       playAudio(7);
              //     },
              //   ),
              // )
              buildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

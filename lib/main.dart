import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int sNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(sNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            buildKey(sNumber: 1, color: Colors.red),
            buildKey(sNumber: 2, color: Colors.orange),
            buildKey(sNumber: 3, color: Colors.yellow),
            buildKey(sNumber: 4, color: Colors.green),
            buildKey(sNumber: 5, color: Colors.teal),
            buildKey(sNumber: 6, color: Colors.blue),
            buildKey(sNumber: 7, color: Colors.purple),
          ]),
        ),
      ),
    );
  }
}

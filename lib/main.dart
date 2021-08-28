import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              xylophoneButton(filename: 'note1.wav', color: Colors.red),
              xylophoneButton(filename: 'note2.wav', color: Colors.orange),
              xylophoneButton(filename: 'note3.wav', color: Colors.yellow),
              xylophoneButton(filename: 'note4.wav', color: Colors.green),
              xylophoneButton(filename: 'note5.wav', color: Colors.blue),
              xylophoneButton(filename: 'note6.wav', color: Colors.indigo),
              xylophoneButton(filename: 'note7.wav', color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }

  Expanded xylophoneButton({String filename, Color color}) => Expanded(
        child: TextButton(
          onPressed: () {
            final player = AudioCache();
            player.play(filename);
          },
          child: Container(
            color: color,
          ),
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.all(0),
            ),
          ),
        ),
      );
}

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
                child: TextButton(
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note2.wav');
                    },
                    child: Text('play sound'))),
          ),
        ),
      ),
    );
  }
}

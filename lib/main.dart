import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {runApp(XylophoneApp());}

class XylophoneApp extends StatelessWidget {
  Expanded buildkey(Color color,int wv){
    return Expanded(
        child: FlatButton(color: color,onPressed: () {
          final player = AudioCache();
          player.play('note$wv.wav');
        }
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(

          child:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(Colors.red, 1),
              buildkey(Colors.deepOrange, 2),
              buildkey(Colors.yellow, 3),
              buildkey(Colors.green, 4),
              buildkey(Colors.blue, 5),
              buildkey(Colors.deepPurple, 6),
              buildkey(Colors.pink, 7)

            ],
          ),
        ),
      ),
    );
  }
}

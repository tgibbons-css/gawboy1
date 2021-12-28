
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //late AudioPlayer player;
  AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }
  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  await player.setAsset('assets/audio/cow.mp3');
                  player.play();
                },
                child: Text('Cow'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () async {
                  await player.setAsset('assets/audio/horse.mp3');
                  player.play();
                },
                child: Text('Horse'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

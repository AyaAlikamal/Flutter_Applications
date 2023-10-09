// import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

// import 'package:just_audio/just_audio.dart';

void main() {
  runApp(Music_App());
}

class Music_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text(
            'Naghamat',
          ),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                final player = AudioCache();
                player.loadPath('assets/music-1.mp3');
              },
              child: Text('My_Music'),
            )
          ],
        ),
      ),
    );
  }
}

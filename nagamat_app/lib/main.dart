// import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

// import 'package:just_audio/just_audio.dart';

void main() {
  runApp(Music_App());
}

class Music_App extends StatelessWidget {
  void Play_Music(int music_number) {
    final player = AudioPlayer();
    player.setSource(AssetSource('assets/music-$music_number.mp3'));
  }

  Expanded My_Button(int music_number, Color button_color, String button_text) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 2.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 33, 65, 81),
          ),
          onPressed: () {
            Play_Music(music_number);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Icon(
                  Icons.music_note,
                  color: button_color,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  button_text,
                  style: TextStyle(
                    color: button_color,
                    fontSize: 25.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 2, 43, 64),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 27, 166, 190),
          title: Text(
            'Naghamat',
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            My_Button(1, Colors.grey, 'Music-1'),
            My_Button(2, Colors.black, 'Music-2'),
            My_Button(3, Colors.white, 'Music-3'),
            My_Button(4, Color.fromARGB(255, 58, 6, 3), 'Music-4'),
            My_Button(5, const Color.fromARGB(255, 158, 8, 58), 'Music-5'),
            My_Button(6, const Color.fromARGB(255, 21, 118, 25), 'Music-6'),
            My_Button(7, const Color.fromARGB(255, 79, 35, 19), 'Music-7'),
          ],
        ),
      ),
    );
  }
}

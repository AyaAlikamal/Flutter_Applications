import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: const Text('IMage Identical'),
        backgroundColor: Colors.indigo[800],
      ),
      body: const ImagePage(),
    ),
  ));
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftimage = 1;
  int rightimage = 1;
  void Change_Right_Image() {
    rightimage = Random().nextInt(8) + 1;
  }

  void Change_Left_Image() {
    leftimage = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          leftimage == rightimage
              ? 'Two photos are idintical'
              : 'Please Try again.',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Change_Left_Image();
                    });
                  },
                  child: Image.asset('images/image-$leftimage.png'),
                ),
              ),
              SizedBox(
                width: 50.0,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Change_Right_Image();
                    });
                  },
                  child: Image.asset('images/image-$rightimage.png'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

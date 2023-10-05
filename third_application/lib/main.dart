import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
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
  @override
  Widget build(BuildContext context) {
    int leftimage = 1;
    int rightimage = 3;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Please Try again.',
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
                child: FilledButton(
                  onPressed: () {
                    setState(() {
                      leftimage = 2;
                      // print("the left button has pressed");
                    });
                  },
                  child: Image.asset('images/image-$leftimage.png'),
                ),
              ),
              Expanded(
                child: FilledButton(
                  onPressed: () {
                    setState(() {
                      rightimage = 4;
                      // print("the right button has pressed");
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

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Fekra"),
          backgroundColor: const Color.fromARGB(255, 141, 12, 55),
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/6194029.png'),
          ),
        ),
      ),
    ),
  );
}

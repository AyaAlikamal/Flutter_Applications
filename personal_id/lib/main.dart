// import 'dart:ffi';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}
class MyApp extends StatelessWidget {
  @override  
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.blueGrey,
          shadowColor: Colors.white,
          title: Center(
            child: Text("Personal ID"),
          ),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
            fontFamily: 'Oswald',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.cyan,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('image/Aya.jpg'),
              ),
              Text(
                'Name: Aya Ali',
                style: TextStyle(
                  fontFamily: 'Oswald',
                  fontSize: 30.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Age : 21',
                style: TextStyle(
                  fontFamily: 'Oswald',
                  fontSize: 30.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Job Title: Electrical Engineer',
                style: TextStyle(
                  fontFamily: 'oswald',
                  fontSize: 30.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 200.0,
                height: 20.0,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Card(
                margin: EdgeInsets.all(15.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.cyan,
                  ),
                  title: Text(
                    '0123456789',
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(15.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.cyan,
                  ),
                  title: Text(
                    'aaya42724@gmail.com',
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

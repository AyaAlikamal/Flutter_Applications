import 'package:flutter/material.dart';
import "app_brain.dart";
import 'package:rflutter_alert/rflutter_alert.dart';

AppBrain appbrain = AppBrain();
void main() {
  runApp(Exam_App());
}

class Exam_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text(
            "Exam App",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Exam_Page(),
        ),
      ),
    );
  }
}

class Exam_Page extends StatefulWidget {
  const Exam_Page({super.key});
  @override
  State<Exam_Page> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Exam_Page> {
  List<Widget> Answer_Results = [];
  int RightAnswers = 0;

  void Check_Answer(bool user_picked) {
    bool correct_answer = appbrain.GetQuestionAnswer();
    setState(() {
      if (user_picked == correct_answer) {
        RightAnswers++;
        print('right answer');
        Answer_Results.add(
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Icon(
              Icons.thumb_up,
              color: Colors.green,
            ),
          ),
        );
      } else {
        print('wrong answer');
        Answer_Results.add(
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Icon(
              Icons.thumb_down,
              color: const Color.fromARGB(255, 151, 19, 9),
            ),
          ),
        );
      }
      if (appbrain.Fished() == true) {
        Alert(
          style: AlertStyle(
            backgroundColor: Color.fromARGB(255, 13, 156, 172),
          ),
          context: context,
          title: "Exam Finished",
          desc: "you have answered $RightAnswers right from 7 questions",
          buttons: [
            DialogButton(
              child: Text(
                "Start again",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              color: Colors.blueGrey,
              onPressed: () => Navigator.pop(context),
              width: 120,
            )
          ],
        ).show();
        appbrain.Rest();
        Answer_Results = [];
        RightAnswers = 0;
      } else {
        appbrain.NextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: Answer_Results,
        ),
        Expanded(
          flex: 5,
          child: Column(
            children: [
              Image.asset(
                appbrain.GetQuestionImage(),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                appbrain.GetQuestionText(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
              ),
              child: Text(
                "True",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Check_Answer(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 66, 8, 4),
              ),
              child: Text(
                "False",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Check_Answer(false);
              },
            ),
          ),
        ),
      ],
    );
  }
}

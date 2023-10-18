import 'package:flutter/material.dart';
import 'package:game_app/question.dart';
import 'question.dart';

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
  List<Padding> Answer_Results = [];
  List<String> Qusetions = [
    "عدد الكواكب في المجموعة الشمسية هو 8 كواكب؟",
    " الارض مسطحة ليست كروية؟",
    "القطط من الحيوانات الاليفة؟",
    "الصين توجد في قارة افرقيا؟",
    "يستطيع الانسان ان يعيش بدون اكل اللحوم؟",
  ];
  List<String> Qusetion_Images = [
    "images/image-1.jpg",
    "images/image-3.jpg",
    "images/image-2.jpg",
    "images/image-4.jpg",
    "images/image-5.jpg"
  ];
  List<bool> Answers = [true, true, true, false, true];
  int Qusetion_Number = 0;
  List<Qusetion> Qusetion_Group = [
      Qusetion qusetion_1 = Qusetion{
      q: "عدد الكواكب في المجموعة الشمسية هو 8 كواكب؟",
      i: "images/image-1.jpg",
      a: true,
      }

       Qusetion qusetion_2 = Qusetion{
      q: " الارض مسطحة ليست كروية؟",
      i: "images/image-2.jpg",
      a: true,
      }

       Qusetion qusetion_3 = Qusetion{
      q: "القطط من الحيوانات الاليفة؟",
      i: "images/image-3.jpg",
      a: true,
      }


       Qusetion qusetion_4 = Qusetion{
      q: "الصين توجد في قارة افرقيا؟",
      i: "images/image-4.jpg",
      a: false,
      }

       Qusetion qusetion_5 = Qusetion{
      q: "يستطيع الانسان ان يعيش بدون اكل اللحوم؟",
      i: "images/image-5.jpg",
      a: true,
      }
  ];
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
                Qusetion_Images[Qusetion_Number],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                Qusetions[Qusetion_Number],
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
                "صح",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                bool correct_answer = Answers[Qusetion_Number];
                if (correct_answer == true) {
                  print('right answer');
                  print(qusetion_1.Qusetion_Text);
                  print(qusetion_1.Qusetion_Answer);
                } else {
                  print('wrong answer');
                }
                setState(() {
                  Qusetion_Number++;
                  Answer_Results.add(
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Icon(
                        Icons.thumb_up,
                        color: Colors.green,
                      ),
                    ),
                  );
                });
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
                "خطأ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                setState(() {
                  Qusetion_Number++;
                  Answer_Results.add(
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Icon(
                        Icons.thumb_down,
                        color: Colors.red,
                      ),
                    ),
                  );
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}

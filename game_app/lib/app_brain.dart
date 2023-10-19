import 'question.dart';

class AppBrain {
  int _QusetionNumber = 0;
  List<Qusetion> _QusetionGroup = [
    Qusetion(
      qusetiontext: "عدد الكواكب في المجموعة الشمسية هو 8 كواكب؟",
      qusetionimage: "images/image-1.jpg",
      qusetionanswer: true,
    ),
    Qusetion(
      qusetiontext: " الارض مسطحة ليست كروية؟",
      qusetionimage: "images/image-3.jpg",
      qusetionanswer: true,
    ),
    Qusetion(
      qusetiontext: "القطط من الحيوانات الاليفة؟",
      qusetionimage: "images/image-2.jpg",
      qusetionanswer: true,
    ),
    Qusetion(
      qusetiontext: "الصين توجد في قارة افرقيا؟",
      qusetionimage: "images/image-4.jpg",
      qusetionanswer: false,
    ),
    Qusetion(
      qusetiontext: "يستطيع الانسان ان يعيش بدون اكل اللحوم؟",
      qusetionimage: "images/image-5.jpg",
      qusetionanswer: true,
    ),
    Qusetion(
      qusetiontext: "الشمس تدور حول الارض و الارض تدور حول القمر؟",
      qusetionimage: "images/image-6.jpg",
      qusetionanswer: false,
    ),
    Qusetion(
      qusetiontext: "الحيوانات لا تشعر بالالم؟",
      qusetionimage: "images/image-7.jpg",
      qusetionanswer: false,
    ),
  ];

  void NextQuestion() {
    if (_QusetionNumber < (_QusetionGroup.length - 1)) {
      _QusetionNumber++;
    }
  }

  String GetQuestionText() {
    return _QusetionGroup[_QusetionNumber].qusetiontext;
  }

  String GetQuestionImage() {
    return _QusetionGroup[_QusetionNumber].qusetionimage;
  }

  bool GetQuestionAnswer() {
    return _QusetionGroup[_QusetionNumber].qusetionanswer;
  }

  bool Fished() {
    if (_QusetionNumber >= (_QusetionGroup.length - 1)) {
      return true;
    } else {
      return false;
    }
  }

  void Rest() {
    _QusetionNumber = 0;
  }
}

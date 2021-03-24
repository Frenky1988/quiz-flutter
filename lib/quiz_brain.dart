import 'package:quizzler/questions.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Questions> _questionBank = [
    Questions(questionText: 'Emu is the largest bird', questionAnswer: false),
    Questions(
        questionText:
            'Approximately one quarter of human bones are in the feet.',
        questionAnswer: true),
    Questions(
        questionText: 'The Second world war started 01.09.1939.',
        questionAnswer: true),
    Questions(
        questionText: 'Some cats are actually allergic to humans',
        questionAnswer: true),
    Questions(
        questionText: 'Buzz Aldrin is the first human who stepped on the Moon.',
        questionAnswer: false),
    Questions(
        questionText: 'It is illegal to pee in the Ocean in Portugal.',
        questionAnswer: true),
    Questions(
        questionText:
            'No piece of square dry paper can be folded in half more than 7 times.',
        questionAnswer: false),
    Questions(
        questionText: 'Monaco is the smallest country in the World',
        questionAnswer: false),
    Questions(
        questionText:
            'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        questionAnswer: false),
    Questions(
        questionText:
            'The total surface area of two human lungs is approximately 70 square metres.',
        questionAnswer: true),
    Questions(
        questionText: 'Google was originally called \"Backrub\".',
        questionAnswer: true),
    Questions(
        questionText: "Utah is the only U.S. state that starts with vowel",
        questionAnswer: true),
    Questions(
        questionText:
            'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        questionAnswer: true),
    Questions(
        questionText:
            'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        questionAnswer: true),
    Questions(
        questionText: "Amazon is the longest river in the world",
        questionAnswer: false),
    Questions(questionText: "THE END", questionAnswer: true)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      //print("This is the last question");
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}

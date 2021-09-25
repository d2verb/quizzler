import 'package:quizzler/question.dart';

class QuizBrain {
  int questionNumber = 0;

  final List<Question> bank = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question(
        'Approximimately one quater of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
  ];

  void nextQuestion() {
    questionNumber++;
  }

  bool isEmpty() {
    return (bank.length - questionNumber) <= 0;
  }

  void reset() {
    questionNumber = 0;
  }

  String getText() {
    return bank[questionNumber].text;
  }

  bool getAnswer() {
    return bank[questionNumber].answer;
  }
}

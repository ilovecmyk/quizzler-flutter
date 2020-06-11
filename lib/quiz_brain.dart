import 'question.dart';

class QuizBrain {

  int _questionNumber = 0; // only quizbrain has access

  List<Question> _questionAndAnswers = [ // underscore makes it private / encapsulated, so that it cant be meddled with, inaccesible outside of this class
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question('No piece of square dry paper can be folded in half more than 7 times.', false),
    Question('In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.', true),
    Question('The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',false),
    Question('The total surface area of two human lungs is approximately 70 square metres.',true),
    Question('Google was originally called \"Backrub\".', true),
    Question('Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',true),
    Question('In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',true),
  ];

void nextQuestion() { // To check how many questions there are and not go beyond the amount
  if (_questionNumber < _questionAndAnswers.length - 1){ // inser - 1 to make sure it doesn't go beyond the lengthq
    _questionNumber++; 
  }
}

String getQuestionText() {
  return _questionAndAnswers[_questionNumber].questionText;
}

bool getCorrectAnswer() {
  return _questionAndAnswers[_questionNumber].questionAnswer;
}

bool isFinished() {
  if (_questionNumber == _questionAndAnswers.length - 1){
    print('this is the last question');
    return true;
  } else {
    print('not the last question yet');
    return false;
  }
}

void reset() {
    _questionNumber = 0;
 }
}

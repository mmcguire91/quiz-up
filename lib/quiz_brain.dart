import 'question.dart';

class QuizBrain {
  int _questionNum = 0;
  //keep track of where the user is in the array (List)

  List<Question> _questionList = [
    //made _questionList private so it's unmodifiable outside of this class
    Question(
      q: 'You can lead a cow down stairs but not up stairs.',
      a: false,
    ),
    Question(
      q: 'Approximately one quarter of human bones are in the feet.',
      a: true,
    ),
    Question(
      q: 'A slug\'s blood is green.',
      a: true,
    ),
    Question(
      q: 'Some cats are actually allergic to humans',
      a: true,
    ),
    Question(
      q: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',
      a: true,
    ),
    Question(
      q: 'It is illegal to pee in the Ocean in Portugal.',
      a: true,
    ),
    Question(
      q: 'No piece of square dry paper can be folded in half more than 7 times.',
      a: false,
    ),
    Question(
      q: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
      a: true,
    ),
    Question(
      q: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
      a: false,
    ),
    Question(
      q: 'The total surface area of two human lungs is approximately 70 square metres.',
      a: true,
    ),
    Question(
      q: 'Google was originally called \"Backrub\".',
      a: true,
    ),
    Question(
      q: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
      a: true,
    ),
    Question(
      q: 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
      a: true,
    ),
  ];

  void getNextQuestion() {
    if (_questionNum < _questionList.length - 1) {
      _questionNum++;
    }
    //if the int of questionNum is less than the total number of questions within the questionList, proceed to the next question
    //we have to specify "-1" because arrays start at 0
    // else {
    //   _questionNum = 0;
    // }
    //else return to the beginning of the questions
  }
  //encapsulating the method to go to the next question

  String getQuestion() {
    return _questionList[_questionNum].questionText;
  }

  bool getAnswer() {
    return _questionList[_questionNum].questionAnswer;
  }
  //encapsulating the retrieval of questions and answers inside a function that can be called on outside of this class since _questionList is now private

  bool isFinished() {
    if (_questionNum == _questionList.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNum = 0;
  }
}

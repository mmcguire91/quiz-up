import 'package:flutter/material.dart';
import 'quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();
//initializing the new class and saving it as a variable

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                // 'This is where the question text will go.',
                quizBrain.getQuestion(),
                //the quizBrain local variable stores the quizBrain class
                //the QuizBrain class holds the question list within
                //questionText is a property of the Question class
                //the list of questions has been made private so we have to call on the non-private method, getQuestion, to retrieve the questionText

                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.green),
              // textColor: Colors.white,
              // color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
                bool correctAnswer = quizBrain.getAnswer();
                //call on the getAnswer method at the int of questionNum inside of the quizBrain local variable
                //the quizBrain local variable stores the quizBrain class
                //encapsulated the questionNum and where the user is within the quiz in the quizBrain class, getNextQuestion method so we no longer need to call on questionNum here

                if (correctAnswer == true) {
                  scoreKeeper.add(
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                  );
                } else {
                  scoreKeeper.add(
                    Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                  );
                }
                setState(() {
                  quizBrain.getNextQuestion();
                  //call on the getNextQuestion method within the quizBrain local variable
                  //the quizBrain local variable stores the quizBrain class
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              // color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //The user picked false.
                bool correctAnswer = quizBrain.getAnswer();
                //call on the getAnswer method at the int of questionNum inside of the quizBrain local variable
                //the quizBrain local variable stores the quizBrain class
                //encapsulated the questionNum and where the user is within the quiz in the quizBrain class, getNextQuestion method so we no longer need to call on questionNum here

                if (correctAnswer == false) {
                  scoreKeeper.add(
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                  );
                } else {
                  scoreKeeper.add(
                    Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                  );
                }
                setState(() {
                  quizBrain.getNextQuestion();
                  //call on the getNextQuestion method within the quizBrain local variable
                  //the quizBrain local variable stores the quizBrain class
                });
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}

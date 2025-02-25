import 'package:flutter/material.dart';
import 'package:quiz_application/answer_button.dart';
import 'package:quiz_application/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    // currentQuestionIndex = currentQuestionIndex + 1;

    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.text,
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),

            ...currentQuestion.getSuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                
                onTap: () {
                  answerQuestion();
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}

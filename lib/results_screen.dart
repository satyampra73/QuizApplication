import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_application/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  ResultsScreen({super.key, required this.choosenAnswers});

  List<String> choosenAnswers = [];

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions,
        'correct_answer': questions[i].answers[0],
        'user_answer': choosenAnswers[i],
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered X out of Y questions correctly'),
            SizedBox(height: 30),
            Text('List of answers and questions...'),
            SizedBox(height: 30),
            TextButton(onPressed: () {}, child: Text('Restart Quiz!')),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_application/data/questions.dart';
import 'package:quiz_application/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  ResultsScreen({super.key, required this.choosenAnswers});

  List<String> choosenAnswers = [];

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': choosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    // final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCurrectQuestions = summaryData.where(
      (data){
        return data['user_answer'] == data['correct_answer'];
      }
    ).length;

    return SizedBox(
      width: double.infinity, 
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered $numCurrectQuestions out of $numTotalQuestions questions correctly'),
            SizedBox(height: 30),
            QuestionsSummary(summaryData),
            SizedBox(height: 30),
            TextButton(onPressed: () {}, child: Text('Restart Quiz!')),
          ],
        ),
      ),
    );
  }
}

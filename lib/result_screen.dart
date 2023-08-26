import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/data_questions.dart';
import 'package:quiz_app/widgets/widgets_questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.chosenAnswers, required this.onRestart});

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': question[i].question,
        'question_answer': question[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = question.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['question_answer'];
    }).length;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You answered correctly $numCorrectQuestions out of $numTotalQuestions questions !',
            style: GoogleFonts.poppins(
              color: const Color.fromARGB(200, 255, 255, 255),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          QuestionsSummary(summaryData: getSummaryData()),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: onRestart,
            child: const Text('Restart Quiz'),
          )
        ],
      ),
    );
  }
}

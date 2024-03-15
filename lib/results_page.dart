import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/summary/questions_summary.dart';
import 'package:adv_basics/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsPage extends StatelessWidget {
  final List<String> chosenAnswers;
  final void Function() onRestartQuiz;

  const ResultsPage({super.key, required this.chosenAnswers, required this.onRestartQuiz});

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].question,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectAnswers = summaryData.where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectAnswers out of $numTotalQuestions questions correctly!',
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(205, 226, 226, 226),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData: summaryData),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: onRestartQuiz,
              label: const Text('Restart Quiz'),
              style: screenButtonStyle,
              icon: const Icon(
                Icons.refresh_rounded,
              )
            ),
          ],
        ),
      ),
    );
  }
}

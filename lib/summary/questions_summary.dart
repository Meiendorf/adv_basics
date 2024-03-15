import 'package:adv_basics/summary/summary_index_widget.dart';
import 'package:adv_basics/summary/summary_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const QuestionsSummary({super.key, required this.summaryData});

  @override
  Widget build(BuildContext context) {
    return SummaryScrollView(
      child: Column(
        children: summaryData.map((data) {
          bool isCorrect = data['correct_answer'] == data['user_answer'];

          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SummaryIndexWidget(
                isCorrect: isCorrect,
                text: ((data['question_index'] as int) + 1).toString(),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: GoogleFonts.roboto().fontFamily,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'You said: ${data['user_answer'] as String}',
                        style: const TextStyle(
                          color: Color.fromARGB(255, 231, 112, 255),
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                          'Correct:   ${data['correct_answer'] as String}',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 113, 184, 241),
                            fontSize: 15,
                          )),
                    ],
                  ),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}

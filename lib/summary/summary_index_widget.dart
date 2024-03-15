import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryIndexWidget extends StatelessWidget {
  final String text;
  final bool isCorrect;

  const SummaryIndexWidget({
    super.key,
    required this.text,
    required this.isCorrect,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(
        right: 10,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isCorrect
            ? const Color.fromARGB(255, 113, 184, 241)
            : const Color.fromARGB(255, 249, 99, 242),
      ),
      child: Text(
        text,
        style: GoogleFonts.roboto(
          fontSize: 16,
          fontWeight: FontWeight.w900,
          color: const Color.fromARGB(255, 58, 0, 101),
        ),
      ),
    );
  }
}

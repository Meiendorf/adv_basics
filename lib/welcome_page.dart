import 'package:adv_basics/styled_text.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(170, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          const StyledText(
            'Learn Flutter the fun way!',
          ),
          const SizedBox(
            height: 60,
          ),
          ElevatedButton.icon(
            onPressed: () {},
            style: buttonStyle,
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            icon: const Icon(
              Icons.play_arrow,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}

final buttonStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.white,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(2),
  ),
  backgroundColor: const Color.fromARGB(255, 114, 4, 197),
  padding: const EdgeInsets.only(
    top: 10,
    bottom: 10,
    left: 10,
    right: 20,
  ),
);

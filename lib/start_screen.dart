import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 250,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
            //not recommended use opacity
            // Opacity(
            //   opacity: 0.5,
            //   child: Image.asset(
            //     'assets/images/quiz-logo.png',
            //     width: 250,
            //   ),
            // ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Let\'s learn Flutter with the fun way !',
              style: GoogleFonts.poppins(
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              onPressed: startQuiz,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
              ),
              icon: const Icon(Icons.arrow_right_alt_sharp),
              label: const Text('Start Quiz'),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

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
            const Text(
              'Let\'s learn Flutter with the fun way !',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              onPressed: () {},
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

import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final void Function() startQuiz;

  const StartScreen(this.startQuiz, {super.key}); // 생성자 간소화

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'asset/img/quiz-logo.png',
            height: 300,
            color: const Color.fromARGB(138, 0, 0, 0),
          ),
          const SizedBox(height: 80),
          const Text(
            'Learn Flutter The Fun Way',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz, // 간소화
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white, // 버튼 스타일 개선
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}

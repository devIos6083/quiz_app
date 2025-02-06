import 'package:flutter/material.dart';
import 'package:udemy/answer_button.dart';
import 'package:udemy/models/quiz_question.dart';
import 'package:udemy/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatefulWidget {
  final void Function(String answer) onSeleteAnswer;
  const Question({
    required this.onSeleteAnswer,
    super.key,
  });

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  List<String> selectedAnswers = [];
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
  }

  var currentQuestionIdx = 0;

  void answerQuestion(String seletedAnswer) {
    widget.onSeleteAnswer(seletedAnswer);
    setState(() {
      currentQuestionIdx++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIdx];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.text,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 20,
            ),
            ...currentQuestion.getShuffled().map((answer) {
              return AnswerButton(
                  answerText: answer,
                  onTap: () {
                    chooseAnswer(answer);
                    answerQuestion(answer);
                  });
            })
          ],
        ),
      ),
    );
  }
}

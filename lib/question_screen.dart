import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'answer_button.dart';
import 'datas/questions.dart';
// -----------------------


class QuestionScreen extends StatefulWidget {
  const QuestionScreen({
    super.key,
    required this.onSelectAnswer,
    required this.onBackToHome,
  });

  final void Function(String answer) onSelectAnswer;
  final void Function() onBackToHome;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    }
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton.icon(
              onPressed: widget.onBackToHome,
              icon: const Icon(Icons.home_rounded, color: Color(0xFFFFF8E1)),
              label: Text(
                'Menu Utama',
                style: GoogleFonts.poppins(color: const Color(0xFFFFF8E1)),
              ),
            ),
            const Spacer(),
            Text(
              currentQuestion.text,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswer().map((item) {
              return AnswerButton(
                text: item,
                onTap: () {
                  answerQuestion(item);
                },
              );
            }),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
// lib/question_identifier.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIndex,
  });

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color(0xFFa5d6a7) // Mint Green
            : const Color(0xFFffab91), // Soft Red/Orange
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber.toString(),
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.bold,
          color: const Color(0xFF263238), // Dark Slate Gray
        ),
      ),
    );
  }
}
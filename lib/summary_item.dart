import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'question_identifier.dart';
// -----------------------

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: itemData['question_index'] as int,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData['question'] as String,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Jawaban Anda: ${itemData['user_answer'] as String}',
                  style: GoogleFonts.poppins(
                    color: isCorrectAnswer
                        ? const Color(0xFFa5d6a7) // Mint Green
                        : const Color(0xFFffab91), // Soft Red/Orange
                  ),
                ),
                Text(
                  'Jawaban Benar: ${itemData['correct_answer'] as String}',
                  style: GoogleFonts.poppins(
                    color: const Color(0xFFa5d6a7), // Mint Green
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// lib/home_screen.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.startQuiz,
    required this.profile,
  });

  final VoidCallback startQuiz;
  final VoidCallback profile;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/logo-quiz.png',
            width: 300,
            color: const Color.fromRGBO(255, 255, 255, 0.8), // Beri sedikit transparansi
          ),
          const SizedBox(height: 50),
          Text(
            'Uji Pengetahuan Flutter Anda!',
            style: GoogleFonts.poppins(
              color: const Color(0xFFFFF8E1), // Light Cream
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          ElevatedButton.icon(
            onPressed: startQuiz,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFF7F50), // Coral
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            icon: const Icon(Icons.play_arrow_rounded),
            label: Text(
              'Mulai Kuis',
              style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 15),
          TextButton.icon(
            onPressed: profile,
            style: TextButton.styleFrom(
              foregroundColor: const Color(0xFFFFF8E1), // Light Cream
            ),
            icon: const Icon(Icons.account_circle),
            label: Text(
              'Profil Saya',
              style: GoogleFonts.poppins(),
            ),
          )
        ],
      ),
    );
  }
}
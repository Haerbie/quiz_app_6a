// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:quiz_app_6a/quiz.dart';
import 'package:quiz_app_6a/home_screen.dart';
import 'package:quiz_app_6a/question_screen.dart';


void main() {
  testWidgets('Quiz app switches from HomeScreen to QuestionScreen on button tap', (WidgetTester tester) async {
    // Langkah 1: Bangun (render) widget utama aplikasi kita, yaitu Quiz.
    await tester.pumpWidget(const MaterialApp(
      home: Quiz(),
    ));

    // Verifikasi bahwa HomeScreen sedang ditampilkan.
    // Kita bisa mencari widget yang unik untuk HomeScreen, seperti gambar atau teks judulnya.
    expect(find.byType(HomeScreen), findsOneWidget);
    expect(find.text('Learn Flutter the fun way!'), findsOneWidget);

    // Verifikasi bahwa QuestionScreen TIDAK sedang ditampilkan.
    expect(find.byType(QuestionScreen), findsNothing);

    // Langkah 2: Temukan tombol "Start Quiz" dan simulasikan tap (ketukan).
    // Kita bisa menemukannya melalui teks atau ikonnya.
    await tester.tap(find.widgetWithText(OutlinedButton, 'Start Quiz'));

    // Langkah 3: Rebuild widget setelah state berubah (setelah tap).
    // pumpAndSettle akan menunggu semua animasi transisi selesai.
    await tester.pumpAndSettle();

    // Verifikasi bahwa HomeScreen sudah tidak ada di layar.
    expect(find.byType(HomeScreen), findsNothing);

    // Verifikasi bahwa QuestionScreen sekarang ditampilkan.
    // Kita bisa mencari widget unik untuk QuestionScreen.
    expect(find.byType(QuestionScreen), findsOneWidget);
    expect(find.text('The question screen...'), findsOneWidget); // Sesuaikan dengan teks di QuestionScreen Anda
  });
}
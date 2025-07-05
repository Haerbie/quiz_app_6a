import '../models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'Apa blok pembangun utama dari antarmuka pengguna (UI) Flutter?',
    [
      'Widget',
      'Komponen',
      'Blok',
      'Fungsi',
    ],
  ),
  QuizQuestion(
    'Bagaimana antarmuka pengguna (UI) Flutter dibuat?',
    [
      'Dengan menggabungkan widget di dalam kode',
      'Dengan menggabungkan widget di editor visual',
      'Dengan mendefinisikan widget di file konfigurasi',
      'Dengan menggunakan Xcode untuk iOS dan Android Studio untuk Android',
    ],
  ),
  QuizQuestion(
    'Apa tujuan dari sebuah StatefulWidget?',
    [
      'Memperbarui UI saat data berubah', 
      'Memperbarui data saat UI berubah',
      'Mengabaikan perubahan data',
      'Menampilkan UI yang tidak bergantung pada data',
    ],
  ),
  QuizQuestion(
    'Widget mana yang sebaiknya lebih sering Anda gunakan: StatelessWidget atau StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Keduanya sama bagusnya',
      'Tidak ada jawaban yang benar',
    ],
  ),
  QuizQuestion(
    'Apa yang terjadi jika Anda mengubah data di dalam sebuah StatelessWidget?',
    [
      'UI tidak diperbarui',
      'UI diperbarui',
      'StatefulWidget terdekat akan diperbarui',
      'Semua StatefulWidget di dalamnya akan diperbarui',
    ],
  ),
  QuizQuestion(
    'Bagaimana cara memperbarui data di dalam StatefulWidget?',
    [
      'Dengan memanggil setState()',
      'Dengan memanggil updateData()',
      'Dengan memanggil updateUI()',
      'Dengan memanggil updateState()',
    ],
  ),
];
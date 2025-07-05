import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({required this.onBack, super.key});

  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFeceff1), // Warna Latar Belakang Abu-abu Terang
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: screenSize.width * 0.3,
                height: screenSize.width * 0.3,
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/foto_pribadi.jpg',
                    fit: BoxFit.cover,
                    alignment: const Alignment(0, -0.3), // Sedikit ke atas
                  ),
                ),
              ),
              SizedBox(height: screenSize.height * 0.03),
              Text(
                'Muhammad Irwan Habibie',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF263238), // Dark Slate Gray
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5),
              Text(
                '2210010461',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Colors.grey[700],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: screenSize.height * 0.04),
              buildInfoCard(
                context,
                icon: Icons.email,
                label: 'Email',
                value: 'muhammadirwanhabibi@gmail.com',
                screenSize: screenSize,
              ),
              SizedBox(height: screenSize.height * 0.015),
              buildInfoCard(
                context,
                icon: Icons.phone,
                label: 'Telepon',
                value: '082148625405',
                screenSize: screenSize,
              ),
              SizedBox(height: screenSize.height * 0.015),
              buildInfoCard(
                context,
                icon: Icons.school,
                label: 'Jurusan',
                value: 'Teknik Informatika',
                screenSize: screenSize,
              ),
              SizedBox(height: screenSize.height * 0.015),

              // --- TANGGAL LAHIR DIKEMBALIKAN ---
              buildInfoCard(
                context,
                icon: Icons.calendar_today,
                label: 'Tanggal Lahir',
                value: '8 Agustus 2004',
                screenSize: screenSize,
              ),
              // ------------------------------------

              const SizedBox(height: 30),
              TextButton(
                onPressed: onBack,
                child: Text(
                  'Kembali ke Menu',
                  style: GoogleFonts.poppins(color: const Color(0xFF004d40)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget untuk membuat kartu informasi
  Widget buildInfoCard(BuildContext context,
      {required IconData icon,
      required String label,
      required String value,
      required Size screenSize}) {
    return Container(
      width: screenSize.width * 0.85,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF004d40), size: 28),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color(0xFF263238),
                    fontWeight: FontWeight.w600,
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
import 'package:flutter/material.dart';

class MenuAtas extends StatelessWidget {
  const MenuAtas({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Bagian Kiri (Salam & Nama Pengguna)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Selamat Pagi', // Ucapan berdasarkan waktu
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
              Text(
                'ILHAM DWI PRASETYO', // Ganti dengan nama pengguna
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          
          // Bagian Kanan (Notifikasi & Bahasa)
          Row(
            children: [
              // Tombol Notifikasi
              IconButton(
                icon: const Icon(Icons.mail_outline, color: Colors.black54),
                onPressed: () {},
              ),
              
              // Tombol Bahasa (Menggunakan gambar placeholder Anda: bahasa.png)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: const [
                    // Ganti dengan Image.asset('assets/bahasa.png') jika sudah ditambahkan ke assets
                    Text(
                      '🇮🇩 ID', // Placeholder visual
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.keyboard_arrow_down, size: 16),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
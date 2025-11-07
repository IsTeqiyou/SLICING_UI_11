import 'package:flutter/material.dart';

class KartuKai extends StatelessWidget {
  const KartuKai({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          // Bagian KAI Pay dan Railpoint
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // KAI Pay Saldo (Menggunakan gambar placeholder Anda: KAUPAYS.png)
              Row(
                children: [
                  // Ganti dengan Image.asset('assets/KAUPAYS.png', height: 24)
                  // Jika tidak ada aset:
                  const Icon(Icons.account_balance_wallet, color: Colors.red, size: 24), 
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'KAIPay',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: const [
                          Text(
                            'Rp ',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
                          ),
                          Text(
                            '0', // Ganti dengan saldo dinamis
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
                          ),
                          Icon(Icons.chevron_right, color: Colors.red, size: 20),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              
              // Railpoin
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.purple.shade50,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.star, color: Colors.purple, size: 16),
                    const SizedBox(width: 4),
                    const Text(
                      'Basic',
                      style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
                    ),
                    const Icon(Icons.chevron_right, color: Colors.purple, size: 16),
                  ],
                ),
              ),
            ],
          ),
          
          const Divider(height: 24),
          
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildActionButton(Icons.qr_code_scanner, 'Scan'),
              _buildActionButton(Icons.add_circle_outline, 'Top Up'),
              _buildActionButton(Icons.history, 'Riwayat'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, size: 28, color: Colors.black87),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
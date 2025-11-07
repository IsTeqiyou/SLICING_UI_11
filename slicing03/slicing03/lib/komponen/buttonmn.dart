import 'package:flutter/material.dart';

class ButtonMenu extends StatelessWidget {
  const ButtonMenu({super.key});

  // Data untuk tombol-tombol layanan
  final List<Map<String, dynamic>> menuItems = const [
    {'icon': Icons.train, 'label': 'Antar Kota', 'color': Colors.blue},
    {'icon': Icons.directions_bus, 'label': 'Lokal', 'color': Colors.orange},
    {'icon': Icons.subway, 'label': 'Komuter', 'color': Colors.red},
    {'icon': Icons.tram, 'label': 'LRT', 'color': Colors.purple},
    {'icon': Icons.local_airport, 'label': 'Bandara', 'color': Colors.lightBlue},
    // Baris kedua
    {'icon': Icons.hotel, 'label': 'Hotel', 'color': Colors.brown},
    {'icon': Icons.credit_card, 'label': 'Kartu Multi Trip', 'color': Colors.green},
    {'icon': Icons.local_shipping, 'label': 'Logistik', 'color': Colors.indigo},
    {'icon': Icons.grid_view, 'label': 'Show more', 'color': Colors.grey},
  ];

  @override
  Widget build(BuildContext context) {
    // Membuat dua baris untuk menu
    final List<Map<String, dynamic>> topRow = menuItems.sublist(0, 5);
    final List<Map<String, dynamic>> bottomRow = menuItems.sublist(5, 9);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        children: [
          // Baris pertama (5 item)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: topRow.map((item) => _buildMenuItem(item)).toList(),
          ),
          
          const SizedBox(height: 16.0),
          
          // Baris kedua (4 item)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: bottomRow.map((item) => _buildMenuItem(item)).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(Map<String, dynamic> item) {
    return SizedBox(
      width: 60, // Sesuaikan lebar agar 5 item bisa muat
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: item['color'].withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(item['icon'] as IconData, color: item['color'], size: 28),
          ),
          const SizedBox(height: 6),
          Text(
            item['label'] as String,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
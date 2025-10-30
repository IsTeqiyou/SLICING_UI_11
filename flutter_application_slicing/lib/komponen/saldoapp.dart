import 'package:flutter/material.dart';
import 'package:flutter_application_slicing/komponen/komponen_ui_2.dart';

class Saldoapp1 extends StatelessWidget {
  const Saldoapp1({super.key});

  @override
  Widget build(BuildContext context) {
      return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color.fromARGB(255, 223, 223, 223),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 5, offset: Offset(1, 2)),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 25, child: Image.asset('assets/wallet.png')),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Rp.550.000",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                // 1. Ganti 'coin' menjadi 'points'
                Text("1000 points", style: TextStyle(fontSize: 16)),
              ],
            ),
            SizedBox(width: 50),
            Komponenui2(logo: 'assets/arrow.png', text: 'bayar'),
            Komponenui2(logo: 'assets/plus.png', text: 'top up'),
            Komponenui2(logo: 'assets/more.png', text: 'lainnya'),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Komponenui2 extends StatelessWidget {
  final String logo;
  final String text;
  const Komponenui2({super.key, required this.logo, required this.text});

  @override
  Widget build(BuildContext context) {
     return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 25, child: Image.asset(logo)),
        Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
      ],
    );
  }
}
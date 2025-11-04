import 'package:flutter/material.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Menuapp extends StatelessWidget {
  const Menuapp({super.key});

  @override
  Widget build(BuildContext context) {
       return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.pink[200],
        borderRadius: BorderRadius.circular(20),
      ),
    
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.home, color: Colors.white, size: 30),
          Text('Home', style: TextStyle(color: Colors.white, fontSize: 12)),
        ],
      ),
    );
  }
}
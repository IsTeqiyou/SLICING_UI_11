import 'package:flutter/material.dart';

class PromoBanner extends StatelessWidget {
  
  final String imagePath;
  const PromoBanner({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        
        height: 140,
        width: double.infinity,
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
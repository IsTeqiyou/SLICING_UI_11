import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi KAI ',
      debugShowCheckedModeBanner: false, 
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[200],
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: KaiCloneHalfPage(),
    );
  }
}

class KaiCloneHalfPage extends StatelessWidget {
  final Color _placeholderColor = Colors.grey[400]!;
  final Color _lightPlaceholderColor = Colors.grey[300]!;
  final Color _darkPlaceholderColor = Colors.grey[500]!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(160.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[700],
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildPlaceholderLine(width: 100, height: 20, color: _lightPlaceholderColor),
                      Icon(Icons.shopping_cart, color: _lightPlaceholderColor),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 60,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),9
                    child: Row(
                      children: [
                        _buildPlaceholderCircle(radius: 15, color: _placeholderColor),
                        const SizedBox(width: 8),
                        _buildPlaceholderLine(width: 60, height: 15, color: _placeholderColor),
                        const SizedBox(width: 5),
                        Icon(Icons.arrow_forward_ios, size: 15, color: _placeholderColor),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      
    
      body: Column( 
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // RailPoin section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    _buildPlaceholderCircle(radius: 10, color: _placeholderColor),
                    const SizedBox(width: 8),
                    _buildPlaceholderLine(width: 40, height: 15, color: _darkPlaceholderColor),
                  ],
                ),
                _buildPlaceholderLine(width: 80, height: 15, color: _darkPlaceholderColor),
              ],
            ),
          ),

         
          Expanded( 
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.builder(
                
                shrinkWrap: true,
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemBuilder: (context, index) {
                  return _buildGreyIconWithPlaceholderLabel();
                },
              ),
            ),
          ),
          
        ],
      ),
      
    
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: _placeholderColor,
        unselectedItemColor: _placeholderColor.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.train), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.receipt), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.local_offer), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }

  // --- Widget Pembantu (Disederhanakan) ---

  Widget _buildPlaceholderLine({double width = 80, double height = 10, Color? color, double borderRadius = 4}) {
    return Container(width: width, height: height, decoration: BoxDecoration(color: color ?? _placeholderColor, borderRadius: BorderRadius.circular(borderRadius)));
  }

  Widget _buildPlaceholderCircle({double radius = 20, Color? color}) {
    return Container(width: radius * 2, height: radius * 2, decoration: BoxDecoration(color: color ?? _placeholderColor, shape: BoxShape.circle));
  }

  Widget _buildGreyIconWithPlaceholderLabel() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildPlaceholderCircle(radius: 25, color: _lightPlaceholderColor),
        const SizedBox(height: 5),
        _buildPlaceholderLine(width: 50, height: 10, color: _darkPlaceholderColor),
      ],
    );
  }
}
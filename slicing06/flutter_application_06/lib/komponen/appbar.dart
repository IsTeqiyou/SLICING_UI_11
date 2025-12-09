// import 'package:flutter/material.dart';
// import 'appbar.dart'; 

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _selectedIndex = 0;

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Appbar(), 
//           Expanded(
//             child: Center(
//               child: Text(
//                 "Halaman $_selectedIndex",
//                 style: TextStyle(fontSize: 22),
//               ),
//             ),
//           ),
//         ],
//       ),

//       // 
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,z
//         onTap: _onItemTapped,
//         selectedItemColor: Colors.blueAccent,
//         unselectedItemColor: Colors.grey,

//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: "Beranda",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite),
//             label: "Favorit",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: "Profil",
//           ),
//         ],
//       ),
//     );
//   }
// }

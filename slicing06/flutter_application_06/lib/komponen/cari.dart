// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:slicing_ui05/decoration/set.dart';

// class Cari extends StatelessWidget {
//   const Cari({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       spacing: 10,
//       children: [
//         //kotak pencarian
//         Expanded(
//           child: TextField(

//             decoration: InputDecoration(
//               filled: true,
//               fillColor: ClassName.color5,
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(5),
//               ),
//               constraints: BoxConstraints(maxHeight: 35),
//               contentPadding: EdgeInsets.all(0),
//               prefixIcon: Icon(Icons.search),
//               hintText: "vitamin untuk anak",
//               hintStyle: GoogleFonts.openSans(fontSize: 14, color: Colors.grey),
//             ),
//           ),
//         ),
//         //kotak scan & favorit
//         Container(
//           height: 35,
//           width: 35,
//           padding: EdgeInsets.all(5),
//           decoration: BoxDecoration(
//             color: Colors.black.withAlpha(100),
//             borderRadius: BorderRadius.circular(5),
//             border: Border.all(color: ClassName.color5, width: 0.8),
//           ),
//           child: Image.asset("assets/icons/scan.png"),
//         ),
//         Container(
//           height: 35,
//           width: 35,
//           padding: EdgeInsets.all(5),
//           decoration: BoxDecoration(
//             color: Colors.black.withAlpha(100),
//             borderRadius: BorderRadius.circular(5), 
//             border: Border.all(color: ClassName.color5, width: 0.8),
//           ),
//           child: Image.asset("assets/icons/favorite.png"),
//         ),
//       ],
//     );
//   }
// }
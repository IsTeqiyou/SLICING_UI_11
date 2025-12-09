// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:slicing_ui05/decoration/set.dart';

// class Menuapps extends StatelessWidget {
//   const Menuapps({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(15),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.end,    
//         children: [
//           Text(
//             "Lihat Semua Promo",
//             style: GoogleFonts.openSans(
//               fontSize: 12,
//               fontWeight: FontWeight.w500,
//               color: Colors.blue[900],
//             ),
//           ),
//           //---menu apps
//           SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Componentmenu(
//                 iconapps: "assets/car.jpg",
//                 labels: "Produk Online",
//               ),
//               Componentmenu(wwwwwwwwwwwwwwwwwwwwwww
//                 iconapps: "assets/car.jpg",
//                 labels: "Kalkulator Zat",
//               ),
//               Componentmenu(iconapps: "assets/car.jpg", labels: "Gift Card"),
//               Componentmenu(iconapps: "assets/car.jpg", labels: "Tagihan"),
//               Componentmenu(iconapps: "assets/car.jpg", labels: "Bonus Point"),
//             ],
//           ),
//           //baris yang kedua
//           SizedBox(height: 10),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Componentmenu(
//                 iconapps: "assets/car.jpg",
//                 labels: "Produk Online",
//               ),
//               Componentmenu(
//                 iconapps: "assets/car.jpg",
//                 labels: "Kalkulator Zat",
//               ),
//               Componentmenu(iconapps: "assets/car.jpg", labels: "Gift Card"),
//               Componentmenu(iconapps: "assets/car.jpg", labels: "Tagihan"),
//               Componentmenu(iconapps: "assets/car.jpg", labels: "Bonus Point"),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Componentmenu extends StatelessWidget {
//   final String iconapps;
//   final String labels;
//   const Componentmenu({
//     super.key,
//     required this.iconapps,
//     required this.labels,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           height: 46,
//           width: 46,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: ClassName.color4,
//             image: DecorationImage(image: AssetImage(iconapps)),
//           ),
//           // child: Icon(Icons.home_filled),
//         ),
//         SizedBox(height: 5),
//         Text(labels, style: GoogleFonts.openSans(fontSize: 8)),
//       ],
//     );
//   }
// }

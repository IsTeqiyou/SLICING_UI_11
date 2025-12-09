// import 'package:flutter/material.dart';
// import 'package:flashsale/set.dart';

// class Flashsale extends StatelessWidget {
//   const Flashsale({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       padding: EdgeInsets.fromLTRB(20, 20, 0, 20),
//       decoration: BoxDecoration(color: ClassName.color3),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "Flash Sale",
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//               color: ClassName.color1,
//             ),
//           ),
//           SizedBox(height: 15),
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: [
//                 Container(
//                   width: 150,
//                   margin: EdgeInsets.only(right: 15),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Center(
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Image.asset(
//                             "assets/sily.jpg",
//                             height: 80,
//                             fit: BoxFit.contain,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         padding: EdgeInsets.symmetric(
//                           horizontal: 10,
//                           vertical: 5,
//                         ),
//                         decoration: BoxDecoration(
//                           color: ClassName.color1,
//                           borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(10),
//                             bottomRight: Radius.circular(10),
//                           ),
//                         ),
//                         child: Text(
//                           "Kucing Anggora",
//                           style: TextStyle(color: Colors.white, fontSize: 10),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Kucing anggora lucu 500 gram",
//                               maxLines: 2,
//                               overflow: TextOverflow.ellipsis,
//                               style: TextStyle(fontSize: 12),
//                             ),
//                             SizedBox(height: 5),
//                             Text(
//                               "Rp. 35.000,-",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 14,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   width: 150,
//                   margin: EdgeInsets.only(right: 15),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Center(
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Image.asset(
//                             "assets/sily.jpg",
//                             height: 80,
//                             fit: BoxFit.contain,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         padding: EdgeInsets.symmetric(
//                           horizontal: 10,
//                           vertical: 5,
//                         ),
//                         decoration: BoxDecoration(
//                           color: ClassName.color1,
//                           borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(10),
//                             bottomRight: Radius.circular(10),
//                           ),
//                         ),
//                         child: Text(
//                           "Kucing Anggora",
//                           style: TextStyle(color: Colors.white, fontSize: 10),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Kucing anggora lucu 500 gram",
//                               maxLines: 2,
//                               overflow: TextOverflow.ellipsis,
//                               style: TextStyle(fontSize: 12),
//                             ),
//                             SizedBox(height: 5),
//                             Text(
//                               "Rp. 35.000,-",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 14,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   width: 150,
//                   margin: EdgeInsets.only(right: 15),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Center(
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Image.asset(
//                             "assets/sily.jpg",
//                             height: 80,
//                             fit: BoxFit.contain,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         padding: EdgeInsets.symmetric(
//                           horizontal: 10,
//                           vertical: 5,
//                         ),
//                         decoration: BoxDecoration(
//                           color: ClassName.color1,
//                           borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(10),
//                             bottomRight: Radius.circular(10),
//                           ),
//                         ),
//                         child: Text(
//                           "Kucing Anggora",
//                           style: TextStyle(color: Colors.white, fontSize: 10),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Kucing anggora lucu 500 gram",
//                               maxLines: 2,
//                               overflow: TextOverflow.ellipsis,
//                               style: TextStyle(fontSize: 12),
//                             ),
//                             SizedBox(height: 5),
//                             Text(
//                               "Rp. 35.000,-",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 14,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   width: 150,
//                   margin: EdgeInsets.only(right: 15),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Center(
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Image.asset(
//                             "assets/sily.jpg",
//                             height: 80,
//                             fit: BoxFit.contain,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         padding: EdgeInsets.symmetric(
//                           horizontal: 10,
//                           vertical: 5,
//                         ),
//                         decoration: BoxDecoration(
//                           color: ClassName.color1,
//                           borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(10),
//                             bottomRight: Radius.circular(10),
//                           ),
//                         ),
//                         child: Text(
//                           "Kucing Anggora",
//                           style: TextStyle(color: Colors.white, fontSize: 10),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Kucing anggora lucu 500 gram",
//                               maxLines: 2,
//                               overflow: TextOverflow.ellipsis,
//                               style: TextStyle(fontSize: 12),
//                             ),
//                             SizedBox(height: 5),
//                             Text(
//                               "Rp. 35.000,-",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 14,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 15),
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: [
//                 Container(
//                   width: 150,
//                   margin: EdgeInsets.only(right: 15),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Center(
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Image.asset(
//                             "assets/sily.jpg",
//                             height: 80,
//                             fit: BoxFit.contain,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         padding: EdgeInsets.symmetric(
//                           horizontal: 10,
//                           vertical: 5,
//                         ),
//                         decoration: BoxDecoration(
//                           color: ClassName.color1,
//                           borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(10),
//                             bottomRight: Radius.circular(10),
//                           ),
//                         ),
//                         child: Text(
//                           "Kucing Anggora",
//                           style: TextStyle(color: Colors.white, fontSize: 10),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Kucing anggora lucu 500 gram",
//                               maxLines: 2,
//                               overflow: TextOverflow.ellipsis,
//                               style: TextStyle(fontSize: 12),
//                             ),
//                             SizedBox(height: 5),
//                             Text(
//                               "Rp. 35.000,-",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 14,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   width: 150,
//                   margin: EdgeInsets.only(right: 15),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Center(
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Image.asset(
//                             "assets/sily.jpg",
//                             height: 80,
//                             fit: BoxFit.contain,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         padding: EdgeInsets.symmetric(
//                           horizontal: 10,
//                           vertical: 5,
//                         ),
//                         decoration: BoxDecoration(
//                           color: ClassName.color1,
//                           borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(10),
//                             bottomRight: Radius.circular(10),
//                           ),
//                         ),
//                         child: Text(
//                           "Kucing Anggora",
//                           style: TextStyle(color: Colors.white, fontSize: 10),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Kucing anggora lucu 500 gram",
//                               maxLines: 2,
//                               overflow: TextOverflow.ellipsis,
//                               style: TextStyle(fontSize: 12),
//                             ),
//                             SizedBox(height: 5),
//                             Text(
//                               "Rp. 35.000,-",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 14,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   width: 150,
//                   margin: EdgeInsets.only(right: 15),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Center(
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Image.asset(
//                             "assets/sily.jpg",
//                             height: 80,
//                             fit: BoxFit.contain,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         padding: EdgeInsets.symmetric(
//                           horizontal: 10,
//                           vertical: 5,
//                         ),
//                         decoration: BoxDecoration(
//                           color: ClassName.color1,
//                           borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(10),
//                             bottomRight: Radius.circular(10),
//                           ),
//                         ),
//                         child: Text(
//                           "Kucing Anggora",
//                           style: TextStyle(color: Colors.white, fontSize: 10),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Kucing anggora lucu 500 gram",
//                               maxLines: 2,
//                               overflow: TextOverflow.ellipsis,
//                               style: TextStyle(fontSize: 12),
//                             ),
//                             SizedBox(height: 5),
//                             Text(
//                               "Rp. 35.000,-",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 14,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   width: 150,
//                   margin: EdgeInsets.only(right: 15),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Center(
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Image.asset(
//                             "assets/sily.jpg",
//                             height: 80,
//                             fit: BoxFit.contain,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         padding: EdgeInsets.symmetric(
//                           horizontal: 10,
//                           vertical: 5,
//                         ),
//                         decoration: BoxDecoration(
//                           color: ClassName.color1,
//                           borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(10),
//                             bottomRight: Radius.circular(10),
//                           ),
//                         ),
//                         child: Text(
//                           "Kucing Anggora",
//                           style: TextStyle(color: Colors.white, fontSize: 10),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Kucing anggora lucu 500 gram",
//                               maxLines: 2,
//                               overflow: TextOverflow.ellipsis,
//                               style: TextStyle(fontSize: 12),
//                             ),
//                             SizedBox(height: 5),
//                             Text(
//                               "Rp. 35.000,-",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 14,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 15),
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: [
//                 Container(
//                   width: 150,
//                   margin: EdgeInsets.only(right: 15),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Center(
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Image.asset(
//                             "assets/sily.jpg",
//                             height: 80,
//                             fit: BoxFit.contain,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         padding: EdgeInsets.symmetric(
//                           horizontal: 10,
//                           vertical: 5,
//                         ),
//                         decoration: BoxDecoration(
//                           color: ClassName.color1,
//                           borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(10),
//                             bottomRight: Radius.circular(10),
//                           ),
//                         ),
//                         child: Text(
//                           "Kucing Anggora",
//                           style: TextStyle(color: Colors.white, fontSize: 10),
//                         ),
//                       ),
//                       Padding(
//                         padding: const
// ...
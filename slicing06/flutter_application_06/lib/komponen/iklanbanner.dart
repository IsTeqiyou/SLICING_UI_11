  import 'package:flutter/material.dart';

class Iklanbanner extends StatelessWidget {
  const Iklanbanner({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> banner = [
      "assets/banners/banner-15.png",
      "assets/banners/banner-16.png",
      "assets/banners/banner-17.png",
    ];

    return SizedBox(
      height: 130,
      child: PageView.builder(
        itemCount: banner.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withAlpha(200),
                    blurRadius: 2,
                    offset: Offset(1, 2),
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage(banner[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),

      // child: PageView(
      //   children: [
      //     Container(
      //       margin: EdgeInsets.symmetric(horizontal: 25),
      //       height: double.infinity,
      //       width: double.infinity,
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(15),
      //         image: DecorationImage(
      //           image: AssetImage("assets/banners/banner-15.png"),
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //     ),
      //     Container(
      //       margin: EdgeInsets.symmetric(horizontal: 25),
      //       height: double.infinity,
      //       width: double.infinity,
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(15),
      //         image: DecorationImage(
      //           image: AssetImage("assets/banners/banner-16.png"),
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //     ),
      //     Container(
      //       margin: EdgeInsets.symmetric(horizontal: 25),
      //       height: double.infinity,
      //       width: double.infinity,
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(15),
      //         image: DecorationImage(
      //           image: AssetImage("assets/banners/banner-17.png"),
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
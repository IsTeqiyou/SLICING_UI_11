import 'package:flutter/material.dart';

class NavBar1 extends StatelessWidget {
  const NavBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 253, 0, 0),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 73, 67, 67),
                child: Icon(Icons.train, color: Colors.red.shade400),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      print("Tombol Keranjang di-tap!");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.blue.shade100,
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.blue.shade800,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("Tombol Lonceng di-tap!");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.blue.shade100,
                        child: Icon(
                          Icons.notifications,
                          color: Colors.amber.shade700,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("Tombol Pengaturan di-tap!");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 0, 140, 255),
                        child: Icon(
                          Icons.settings_outlined,
                          color: const Color.fromARGB(255, 121, 141, 163),
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
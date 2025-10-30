import 'package:flutter/material.dart';
import 'package:flutter_application_slicing/komponen/komponen_ui_1.dart';
import 'package:flutter_application_slicing/komponen/saldoapp.dart';
import 'package:flutter_application_slicing/komponen/banner.dart';

class Page01 extends StatelessWidget {
  const Page01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 2. Atur warna background utama
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
    
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  // 3. Sesuaikan warna gradient
                  colors: [Colors.red.shade300, Colors.white],
                ),
              ),
              child: Column(
                children: [
                  // 4. Beri jarak aman untuk status bar
                  SizedBox(height: 50),
                  
                  // --- SEARCH BAR & PROFILE ---
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        // 5. Gunakan Expanded agar TextField fleksibel
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Mau makan Apa hari ini',
                              hintStyle: TextStyle(color: Colors.grey),
                              filled: true,
                              // 6. Ubah warna fill dan hilangkan border
                              fillColor: Color.fromARGB(255, 230, 229, 229),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        // 7. Styling icon profile
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.pink.shade50,
                          child: Icon(Icons.person,
                              color: Colors.red, size: 30),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  // --- MENU FAVORIT & GAMBAR ---
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Menu favorit Anda",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 150,
                          width: 150,
                          child: Image.asset('assets/FastFood.png'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      KomponenUi1(
                          logo: 'assets/burger.png', text: 'Promo trus'),
                      KomponenUi1(
                          logo: 'assets/store.png', text: 'Restoran'),
                      KomponenUi1(
                          logo: 'assets/orange-juice.png', text: 'Minuman'),
                      KomponenUi1(
                          logo: 'assets/vegetables.png',
                          text: 'Buah & Sayur'),
                    ],
                  ),
                  // 8. Beri jarak agar kartu saldo bisa overlap
                  SizedBox(height: 50),
                ],
              ),
            ),

            // --- KARTU SALDO (OVERLAP) ---
            // 9. Gunakan Transform.translate untuk menarik kartu ke atas
            Transform.translate(
              offset: Offset(0, -35),
              child: Saldoapp1(),
            ),

            // --- KATEGORI MAKANAN ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Kategori Makanan",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: GridView.count(
                crossAxisCount: 4,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: List.generate(8, (index) {
                  // Ini adalah placeholder pink
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.pink.shade50,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  );
                }),
              ),
            ),

            // --- BAGIAN PROMO ---
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              // 11. Tambahkan teks "Cek promo hari ini !"
              child: Text(
                "Cek promo hari ini !",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // 12. Tambahkan Banner (pastikan path asset benar)
            PromoBanner(imagePath: 'assets/delivery.jpg') // Ganti dgn nama file banner Anda
          ],
        ),
      ),

      // --- BOTTOM NAVIGATION BAR ---
      // 13. Tambahkan BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Bag',
          ),
        ],
        // 14. Styling agar sesuai gambar
        currentIndex: 0,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
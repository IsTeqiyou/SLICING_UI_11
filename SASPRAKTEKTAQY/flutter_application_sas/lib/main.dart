import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
//AFWAN USTADZ HANYA INI YANG ANA INGAT KODENYA//
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> banners = [
      'assets/banner-15.png',
      'assets/banner-16.png',
      'assets/banner-17.png',
    ];

    
    final List<Map<String, String>> categories = [
      {'image': 'assets/jus-jeruk.png', 'title': 'Minuman'},
      {'image': 'assets/pizza.png', 'title': 'Promo Trus'},
      {'image': 'assets/burger.jpg', 'title': 'Fast Food'},
      {'image': 'assets/apel.png', 'title': 'Buah & Sayur'},
      {'image': 'assets/buah-sayur.png', 'title': 'Beli + Point'},
      {'image': 'assets/kindeyjoy.png', 'title': 'Kinder Joy'},
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFE0E0E0),
      body: SafeArea(
        child: SingleChildScrollView( 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
                child: Text(
                  'Banner Slide 3 Banner/gambar',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),

              // SLIDER BANNER
              SizedBox(
                height: 200,
                child: PageView.builder(
                  itemCount: banners.length,
                  controller: PageController(viewportFraction: 0.9),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(color: Colors.black26, blurRadius: 5, offset: Offset(0, 3))
                        ],
                        image: DecorationImage(
                          image: AssetImage(banners[index]),
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 20),

             
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Center(
                  child: Wrap(
                    spacing: 20, 
                    runSpacing: 20, 
                    alignment: WrapAlignment.center,
                    children: categories.map((item) {
                      return Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(12),
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2))
                              ],
                            ),
                            child: Image.asset(item['image']!, fit: BoxFit.contain),
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            width: 75,
                            child: Text(
                              item['title']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';



void main() {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Gabungan UI dan Navigasi',
      home: MainPage(),
    );
  }
}


P
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  // Daftar Halaman
  static final List<Widget> _pages = <Widget>[
    const HomePageCustom(), 
    const PromoPage(), 
    const Center(child: Text('Chat Page\n(Halaman 3)')), 
    const ProfilePage(), 
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Icons.home, 0),
            _buildNavItem(Icons.message_rounded, 2), 
            _buildNavItem(MdiIcons.shopping, 3), 
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    return IconButton(
      icon: Icon(
        icon,
        size: 30,
        color: _selectedIndex == index ? Colors.black : Colors.grey[400],
      ),
      onPressed: () => _onItemTapped(index),
    );
  }
}


class HomePageCustom extends StatelessWidget {
  const HomePageCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            
            _buildCustomHeader(context),
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  
                  _buildPromoBanner(),
                  const SizedBox(height: 20),

                  
                  _buildCategoryGrid(),
                  const SizedBox(height: 30),

                  const Text(
                    'Produk Terbaru',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  _buildProductList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 10, bottom: 10, left: 16, right: 16),
      color: Colors.white,
      child: Column(
        children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: const [
                  Icon(Icons.menu),
                  SizedBox(width: 10),
                  Text('Nama Aplikasi', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ],
              ),
              const Icon(Icons.notifications_none),
            ],
          ),
          const SizedBox(height: 15),
          TextField(
            decoration: InputDecoration(
              hintText: 'Cari kebutuhanmu di sini...',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.grey[100],
              contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPromoBanner() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'PROMO HARI INI!',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 5),
          Text(
            'Dapatkan diskon hingga 50%',
            style: TextStyle(fontSize: 14, color: Colors.white70),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryGrid() {
    final List<Map<String, dynamic>> categories = [
      {'icon': Icons.store, 'label': 'Toko'},
      {'icon': Icons.receipt_long, 'label': 'Tagihan'},
      {'icon': Icons.loyalty, 'label': 'Voucher'},
      {'icon': Icons.local_shipping, 'label': 'Kurir'},
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: categories.map((cat) {
        return Flexible(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(cat['icon'] as IconData, color: Colors.blue, size: 24),
              ),
              const SizedBox(height: 5),
              Text(cat['label'] as String, style: const TextStyle(fontSize: 12), textAlign: TextAlign.center,),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildProductList() {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            width: 120,
            margin: const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[200]!),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Center(
                    child: Container(
                      width: 80,
                      height: 80,
                      color: Colors.grey[300],
                      child: const Icon(Icons.image),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Produk ${index + 1}', style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                      Text('Rp ${100000 + (index * 50000)}', style: TextStyle(fontSize: 12, color: Colors.green)),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}



class PromoPage extends StatelessWidget {
  const PromoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 0,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 10),
            const VoucherCard(),
            const SizedBox(height: 20),
            const DailyCheckInBanner(),
            const SizedBox(height: 20),
            const TagFilterSection(),
            const SizedBox(height: 20),
            const Text(
              "Promo hari ini",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            
            const HorizontalPromoCarousel(
              images: [
                "assets/Group_12.png", 
                "assets/Group_12_1.png", 
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Promo Makanan",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const SingleImagePromo(imagePath: "assets/banner-7.png"), 
            const SizedBox(height: 20),
            const Text(
              "Promo Liburan",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const HorizontalPromoCarousel(
              images: [
                "assets/promo-liburan-1.png", 
                "assets/promo-liburan-2.png", 
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Promo Transportasi",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const HorizontalPromoCarousel(
              images: [
                "assets/banner-2.png", 
                "assets/banner-3.png", 
              ],
            ),
            const SizedBox(height: 20),
            
            const SingleImagePromo(imagePath: "assets/banner-10.png"),
            const SizedBox(height: 10),
            const SingleImagePromo(imagePath: "assets/banner-11.png"),
            const SizedBox(height: 10),
            const SingleImagePromo(imagePath: "assets/banner-12.png"),
            const SizedBox(height: 40), 
          ],
        ),
      ),
    );
  }
}

class VoucherCard extends StatelessWidget {
  const VoucherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey[200], 
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildVoucherInfo(
                count: "15 Voucers",
                label: "Pakai yuk!",
                color: Colors.blue.shade600,
              ),
              _buildVoucherInfo(
                count: "Voucers Plus",
                label: "Langganan sekarang",
                color: Colors.blue.shade600,
              ),
            ],
          ),
          const Divider(height: 25, thickness: 1, color: Colors.grey),
          TextField(
            decoration: InputDecoration(
              hintText: "Masukan kode voucher",
              prefixIcon: Icon(MdiIcons.ticketConfirmation, color: Colors.grey),
              suffixIcon: Icon(MdiIcons.arrowRightBold, color: Colors.blue.shade600),
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVoucherInfo({required String count, required String label, required Color color}) {
    return Row(
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.star, color: Colors.white, size: 18),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              count,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Text(
              label,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ], 
        ),
      ],
    );
  }
}

class DailyCheckInBanner extends StatelessWidget {
  const DailyCheckInBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.red.shade400, 
        borderRadius: BorderRadius.circular(10),
      ),  
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.orange.shade300,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              "🎁", 
              style: TextStyle(fontSize: 24),
            ),
          ),
          const SizedBox(width: 10),
          const Expanded(
            child: Text(
              "Check-in Setiap Hari Koinnya",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text("Klaim", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}

class TagFilterSection extends StatelessWidget {
  const TagFilterSection({super.key});

  final List<String> tags = const [
    "11.11",
    "gajian",
    "riding",
    "food",
    "travel",
    "vacation",
    "hotel",
    "drinks",
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0, 
      children: tags.map((tag) => _buildTagButton(tag)).toList(),
    );
  }

  Widget _buildTagButton(String text) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        side: const BorderSide(color: Colors.grey, width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      ),
      child: Text(text),
    );
  }
}

class HorizontalPromoCarousel extends StatelessWidget {
  final List<String> images;
  const HorizontalPromoCarousel({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120, 
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          return Container(
            width: MediaQuery.of(context).size.width * 0.7, 
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                
                image: AssetImage(images[index]), 
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}

class SingleImagePromo extends StatelessWidget {
  final String imagePath;
  const SingleImagePromo({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "My Profil",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const ProfileHeader(),
            const Divider(height: 30, thickness: 1, color: Colors.grey),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
              child: Text(
                "Account",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            _buildProfileItem(MdiIcons.clipboardListOutline, "My Orders"),
            _buildProfileItem(MdiIcons.creditCardOutline, "My Subscription"),
            _buildProfileItem(MdiIcons.percentOutline, "Promo"),
            _buildProfileItem(Icons.payment, "Payment"),
            _buildProfileItem(Icons.help_outline, "Help"),
            _buildProfileItem(Icons.language, "Language"),
            _buildProfileItem(Icons.logout, "Log Out"),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileItem(IconData icon, String title) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: Colors.black, size: 28),
          title: Text(title, style: const TextStyle(fontSize: 16)),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
          onTap: () {
            
          },
        ),
        const Divider(height: 1, indent: 20, endIndent: 20, color: Colors.grey),
      ],
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 35,
            backgroundColor: Colors.grey,
            child: Icon(Icons.person, size: 40, color: Colors.white),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Fulan bin fulan",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              const Text(
                "fulan@gmail.com",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const Text(
                "+6284593834627392",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.star, color: Colors.black, size: 16),
                    SizedBox(width: 5),
                    Text("Basic", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          const Icon(Icons.edit, color: Colors.grey, size: 24),
        ],
      ),
    );
  }
}
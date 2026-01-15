import 'package:flutter/material.dart';
import 'package:praktikumuiux_7020230002/screens/cart/cart_screen.dart';
import 'package:praktikumuiux_7020230002/screens/product_grid/product_grid_screen.dart';
import 'package:praktikumuiux_7020230002/screens/profile/profile_screen.dart';
import 'package:praktikumuiux_7020230002/widgets/product_card.dart';
import 'package:praktikumuiux_7020230002/models/product_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Indeks halaman yang sedang aktif (6: Produk, 1: Keranjang, 2: Profil)
  int _selectedIndex = 0;

  // Daftar halaman yang akan ditampilkan sesuai menu navigasi
  final List<Widget> _pages = [
    ProductGridScreen(), // Halaman Daftar Produk
    CartScreen(), // Halaman Keranjang
    ProfileScreen(), // Halaman Profil
  ];

  // Fungsi untuk menguboh status indeks saat ihon ditekan
  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex == 0
          ? AppBar(
              elevation: 0,
              backgroundColor: Colors.blueAccent,
              title: TextField(
                decoration: InputDecoration(
                  hintText: 'Cari produk impian...',
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey[200],
                    size: 20,
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 166, 198, 255),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.zero,
                  isDense: true,
                ),
              ),
            )
          : null,
      body: _pages[_selectedIndex],

      // Implementasi Navigasi Bawah
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed, // Menjaga posisi icon tetap stobil
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Produk',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            activeIcon: Icon(Icons.shopping_cart),
            label: 'Keranjang',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Produk Terbaru',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.75,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return ProductCard(product: dummyProducts[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

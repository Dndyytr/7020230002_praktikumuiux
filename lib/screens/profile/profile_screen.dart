import 'package:flutter/material.dart';
import 'package:praktikumuiux_7020230002/screens/login/login_page.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // Latar belakong abu-abu muda
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Bagian 1: Header Profil
            _buildHeader(),
            const SizedBox(height: 20),

            // Bagian 2: Daftar Menu Pengaturan
            _buildMenuSection(context),

            // Bagian 3: Tombol Keluar
            _buildLogoutButton(context),
          ],
        ),
      ),
    );
  }

  // Widget Header (Foto Profil dan Nama)
  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 40),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.blueAccent,
            child: ClipOval(
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_5GA6FzYwrhJ6xBd2BFMO_6S7841SwK4lRw&s',
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(height: 15),
          Text(
            "Dandy Taufiqurrochman",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text(
            "dandy.taufiqurrochman@email.com",
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  // Widget Bagian Menu (Latihan ListTile)
  Widget _buildMenuSection(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),

      child: Column(
        children: [
          _buildMenuItem(Icons.person_outline, "Ubah Profil", () {}),
          const Divider(height: 0),
          _buildMenuItem(Icons.shopping_bag_outlined, "Pesanan Saya", () {}),
          const Divider(height: 0),
          _buildMenuItem(Icons.notifications_none, "Notifikasi", () {}),
          const Divider(height: 0),
          _buildMenuItem(Icons.lock_outline, "Keamanan Akun", () {}),
          const Divider(height: 0),
          _buildMenuItem(Icons.help_outline, "Pusat Bantuan", () {}),
        ],
      ),
    );
  }

  // Helper untuk membuat item menu yang konsisten (Reusable)
  Widget _buildMenuItem(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: Colors.blueAccent),
      title: Text(title, style: const TextStyle(fontSize: 16)),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 16,
        color: Colors.grey,
      ),
      onTap: onTap,
    );
  }

  // Widget Tombol Keluar
  Widget _buildLogoutButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: double.infinity,
        child: OutlinedButton(
          onPressed: () {
            // Logika keluar aplikasi atau kembali ke Login
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
              (Route<dynamic> route) => false,
            );
          },
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.red,
            side: const BorderSide(color: Colors.red),
            padding: const EdgeInsets.symmetric(vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text(
            "Keluar",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

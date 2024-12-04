import 'package:flutter/material.dart';

void main() {
  runApp(WashLabApp());
}

class WashLabApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WashLab',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
      debugShowCheckedModeBanner: false, // Menghilangkan label debug
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Profil'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navigasi kembali
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Avatar Pengguna
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.blue,
                child: const Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Bidang Profil
            ProfileField(
              label: 'Nama Pengguna',
              hintText: 'Masukkan nama pengguna',
            ),
            ProfileField(
              label: 'No HP',
              hintText: 'Masukkan nomor HP',
            ),
            ProfileField(
              label: 'Alamat',
              hintText: 'Masukkan alamat',
            ),
            ProfileField(
              label: 'Kata Sandi',
              hintText: 'Masukkan kata sandi',
              obscureText: true,
            ),

            const SizedBox(height: 20),

            // Tombol Logout
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Tambahkan logika logout
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text('LOGOUT'),
              ),
            ),
          ],
        ),
      ),

      // Navigasi Bawah
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: '',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          // Tambahkan logika navigasi
        },
      ),
    );
  }
}

class ProfileField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool obscureText;

  const ProfileField({
    Key? key,
    required this.label,
    required this.hintText,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: label,
          hintText: hintText,
          suffixIcon: const Icon(Icons.edit),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

// lib/pages/daftarDoorsmeer.dart

import 'package:flutter/material.dart';
import 'detailDoorsmeer.dart'; // Import HalamanDetailDoorsmeer
import '../widgets/floatingButton.dart'; // Import MultiFloatingButtons

class HalamanDaftarDoorsmeer extends StatefulWidget {
  const HalamanDaftarDoorsmeer({Key? key}) : super(key: key);

  @override
  _HalamanDaftarDoorsmeerState createState() => _HalamanDaftarDoorsmeerState();
}

class _HalamanDaftarDoorsmeerState extends State<HalamanDaftarDoorsmeer> {
  // Definisikan GlobalKey untuk Scaffold
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // Contoh data statis, Anda bisa menggantinya dengan data dinamis atau dari API
  final List<Map<String, String>> doorsmeerList = const [
    {
      'nama': 'WR Doorsmeer',
      'alamat': 'JL. Teungku Ahmad Kandang',
      'deskripsi': 'Kami menyediakan layanan cuci kendaraan terbaik dengan harga terjangkau.',
      'gambar': 'assets/images/doorsmeer1.png', // Pastikan gambar ini ada di folder assets/images/
    },
    {
      'nama': 'ABC Doorsmeer',
      'alamat': 'JL. Contoh Alamat 2',
      'deskripsi': 'Layanan cepat dan profesional untuk semua jenis kendaraan.',
      'gambar': 'assets/images/doorsmeer2.png',
    },
    // Tambahkan data Doorsmeer lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    // Mengambil ukuran layar untuk responsivitas
    final size = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey, // Assign GlobalKey ke Scaffold
      // Header WASHLAB
      appBar: AppBar(
        title: Text('Daftar Doorsmeer'),
        backgroundColor: const Color(0xFF144B74),
      ),
      backgroundColor: Colors.white, // Mengatur background menjadi putih
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: size.height * 0.02),
            // Pencarian
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Pencarian',
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Color(0xFFF0F0F0),
                  contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (value) {
                  // Logika pencarian dapat ditambahkan di sini
                },
              ),
            ),
            SizedBox(height: size.height * 0.03),
            // List Doorsmeer
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: doorsmeerList.length,
              itemBuilder: (context, index) {
                final doorsmeer = doorsmeerList[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      // Navigasi ke halaman detail saat item diklik
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailDoorsmeer(
                            nama: doorsmeer['nama']!,
                            alamat: doorsmeer['alamat']!,
                            deskripsi: doorsmeer['deskripsi']!,
                            gambar: doorsmeer['gambar']!,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 77,
                      decoration: BoxDecoration(
                        color: Color(0xFF577C8E),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              doorsmeer['nama']!,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              doorsmeer['alamat']!,
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontSize: 11,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.02),
            // Anda bisa menambahkan widget lain di sini jika diperlukan
          ],
        ),
      ),
      // Menambahkan MultiFloatingButtons sebagai floatingActionButton
      floatingActionButton: MultiFloatingButtons(
        onSidebarPressed: () {
          // Logika untuk membuka sidebar menggunakan GlobalKey
          _scaffoldKey.currentState?.openDrawer();
        },
        onHomePressed: () {
          // Logika untuk navigasi ke home
          Navigator.pushNamed(context, '/home');
        },
        onProfilePressed: () {
          // Logika untuk navigasi ke profile
          Navigator.pushNamed(context, '/profile');
        },
      ),
      // Jika Anda menggunakan Drawer, tambahkan di sini
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF144B74),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            // Tambahkan item menu lainnya di sini
          ],
        ),
      ),
    );
  }
}
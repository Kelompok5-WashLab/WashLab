import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background dengan gambar
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/air.png'), // Path gambar background
                fit: BoxFit.cover,
                alignment: Alignment.topCenter, 
              ),
            ),
          ),
          Column(
            children: [
              // Header dengan background biru
              Container(
                padding: const EdgeInsets.only(top: 40, bottom: 16),
                color: Color(0xFF174A7C), // Warna biru untuk header
                alignment: Alignment.center,
                child: const Text(
                  'WASHLAB',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              // Profile pengguna
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      // Foto profil
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: const Color.fromARGB(255, 16, 67, 109),
                        child: const Icon(
                          Icons.person,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 16),
                      // Nama dan detail pengguna
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Gojo Satoru',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            'Sp. Ardat',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      // Button customer
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF5085A5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'Customer',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              // Garis pemisah
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                height: 1,
                color: Colors.grey.shade400,
              ),
              const SizedBox(height: 16),
              // Tulisan selamat datang dengan gradasi
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShaderMask(
                      shaderCallback: (bounds) => const LinearGradient(
                        colors: [Colors.blue, Colors.purple],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ).createShader(bounds),
                      child: const Text(
                        'Selamat Datang! di aplikasi WASHLAB',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Temukan layanan cuci kendaraan yang bisa kamu pesan sesuai jadwalmu! Tidak perlu antre panjang atau menunggu lama.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              // Gambar mobil di bagian bawah dekat menu
              Padding(
                padding: const EdgeInsets.only(bottom: 80),
                child: Center(
                  child: Image.asset(
                    'assets/moci.jpg', // Path gambar mobil
                    width: 400,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF174A7C), // Warna biru untuk bottom nav
        selectedItemColor: Colors.white, // Ikon dan teks aktif putih
        unselectedItemColor: Colors.white70, // Ikon dan teks tidak aktif putih
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

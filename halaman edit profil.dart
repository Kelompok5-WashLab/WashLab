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
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF174A7C),
        title: Text('Profil'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Color(0xFF5085A5),
              child: Icon(
                Icons.person,
                size: 40,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            ProfileField(
              label: 'Nama Pengguna',
              onEditPressed: () {
                _showEditDialog(context, 'Nama Pengguna', 'Nama pengguna baru');
              },
            ),
            ProfileField(
              label: 'No HP',
              onEditPressed: () {
                _showEditDialog(context, 'No HP', 'Nomor HP baru');
              },
            ),
            ProfileField(
              label: 'Alamat',
              onEditPressed: () {
                _showEditDialog(context, 'Alamat', 'Alamat baru');
              },
            ),
            ProfileField(
              label: 'Kata Sandi',
              onEditPressed: () {
                _showEditDialog(context, 'Kata Sandi', 'Kata sandi baru');
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle logout button press
              },
              child: Text('LOGOUT'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF174A7C),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
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
        selectedItemColor: Color(0xFF174A7C),
        unselectedItemColor: Colors.grey,
      ),
    );
  }

  void _showEditDialog(BuildContext context, String title, String hintText) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Ganti $title'),
          content: TextField(
            decoration: InputDecoration(
              labelText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Batalkan'),
            ),
            TextButton(
              onPressed: () {
                // Handle change action
              },
              child: Text('Ganti'),
            ),
          ],
        );
      },
    );
  }
}

class ProfileField extends StatelessWidget {
  final String label;
  final VoidCallback? onEditPressed;

  ProfileField({required this.label, this.onEditPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: '$label*',
          suffixIcon: IconButton(
            icon: Icon(Icons.edit),
            onPressed: onEditPressed,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

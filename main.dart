import 'package:flutter/material.dart';
import 'splash.dart'; // Halaman Splash
import 'halamanlogin.dart'; // Halaman Login
import 'signup.dart'; // Halaman Sign Up
import 'home.dart'; // Halaman Home setelah login

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App', // Judul aplikasi
      theme: ThemeData(
        primarySwatch: Colors.blue, // Warna utama aplikasi
      ),
      initialRoute: '/', // Rute awal, menampilkan halaman SplashPage
      routes: {
        '/': (context) => const SplashPage(), // Halaman Splash sebagai default
        '/login': (context) => const LoginPage(), // Halaman Login
        '/signup': (context) => const SignUpPage(), // Halaman Sign Up
        '/home': (context) => const HomePage(), // Halaman utama setelah login
      },
    );
  }
}

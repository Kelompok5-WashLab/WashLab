import 'package:flutter/material.dart';
//code login
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF9F6), // Warna latar belakang
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: 350,
          height: 500,
          decoration: BoxDecoration(
            color: const Color(0xFF174A7C), // Warna biru
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'LOGIN',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),

              // TextField untuk username
              const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person, color: Colors.black54),
                  hintText: 'Username',
                  hintStyle: TextStyle(color: Colors.black54),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // TextField untuk password
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock, color: Colors.black54),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.black54),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Tombol Forget Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Tambahkan logika di sini
                  },
                  child: const Text(
                    'Forgot password?',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Tombol Login
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // Tambahkan logika di sini
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF5085A5), // Warna tombol
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Bagian Sign Up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {
                      // Tambahkan logika di sini
                    },
                    child: const Text(
                      'SIGN UP',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

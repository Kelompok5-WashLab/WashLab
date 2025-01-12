import 'package:flutter/material.dart';
import 'halamanlogin.dart';  // Pastikan LoginPage sudah di-import

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0.0, end: 5.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _controller.forward();
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LogoScreen()), // Pindah ke LogoScreen
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 47, 65, 86),
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Container(
              width: screenWidth * _animation.value,
              height: screenWidth * _animation.value,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(244, 239, 235, 1), // Warna cream
                shape: BoxShape.rectangle,
              ),
            );
          },
        ),
      ),
    );
  }
}

class LogoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Setelah LogoScreen selesai, otomatis pindah ke halaman login
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()), // Arahkan ke halaman login
      );
    });

    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 239, 235, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/ws.png', height: 250),
          ],
        ),
      ),
    );
  }
}

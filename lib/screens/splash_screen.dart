import 'package:flutter/material.dart';
import 'package:social_media_app/screens/login_screen.dart';
import 'package:social_media_app/widgets/diamond_images_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        // MaterialPageRoute(builder: (context) => const BoardingScreen()),
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/splash_screen/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF5151C6).withOpacity(0.2),
                  Color(0xFF888BF4).withOpacity(0.6),
                ],
              ),
            ),
          ),
          DiamondImage(),
        ],
      ),
    );
  }
}

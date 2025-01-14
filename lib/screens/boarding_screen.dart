import 'package:flutter/material.dart';
import 'package:social_media_app/widgets/diamond_images_widget.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Background Image
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/splash_screen/bg.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Gradient Overlay
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color(0xFF5151C6).withOpacity(0.2),
                    const Color(0xFF888BF4).withOpacity(0.6),
                  ],
                ),
              ),
            ),
            // Foreground Content
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Diamond Image Widget
                const DiamondImage(),
                const SizedBox(height: 60), // Spacing below DiamondImage
                // Text Below DiamondImage
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "SHARE - ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "INSPIRE - ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "CONNECT",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20), // Spacing below text
                // Button
                ElevatedButton(
                  onPressed: () {
                    // Handle button press, e.g., navigate to another screen
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD0D0D0).withOpacity(0.4), // Button color
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 15,
                    ), // Button padding
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50), // Rounded corners
                    ),
                  ),
                  child: const Text(
                    "GET STARTED",
                    style: TextStyle(
                      fontSize: 16,
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
    );
  }
}

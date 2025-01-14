import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DiamondImage extends StatelessWidget {
  const DiamondImage({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/logo/logo.svg',
          height: 40,
        ),
        const SizedBox(height: 80),
        Center(
          child: SizedBox(
            width: 250,
            height: 250,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Top diamond
                Positioned(
                  top: 0,
                  child: Transform.rotate(
                    angle: 45 * 3.141592653589793 / 180,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF5151C6),
                            offset: const Offset(-12, -12),
                          ),
                        ],
                        color: Colors.grey[300],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/splash_screen/1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                // Bottom diamond
                Positioned(
                  bottom: 0,
                  child: Transform.rotate(
                    angle: 45 * 3.141592653589793 / 180,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF5151C6),
                            offset: const Offset(12, 12),
                          ),
                        ],
                        color: Colors.grey[300],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/splash_screen/2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                // Left diamond
                Positioned(
                  left: 0,
                  child: Transform.rotate(
                    angle: 45 * 3.141592653589793 / 180,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[300],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/splash_screen/3.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                // Right diamond
                Positioned(
                  right: 0,
                  child: Transform.rotate(
                    angle: 45 * 3.141592653589793 / 180,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[300],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/splash_screen/4.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

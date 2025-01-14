import 'package:flutter/material.dart';

class DiamondShapeWidget extends StatelessWidget {
  const DiamondShapeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Bottom Diamond
          Transform.rotate(
            angle: 0.785398, // 45 degrees in radians
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF5151C6).withOpacity(0.1), // 10% opacity
                    const Color(0xFF5151C6).withOpacity(0.5), // 50% opacity
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
            ),
          ),
          // Left Diamond
          Positioned(
            left: 20,
            child: Transform.rotate(
              angle: 0.785398,
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFF5151C6).withOpacity(0.1), // 10% opacity
                      const Color(0xFF5151C6).withOpacity(0.5), // 50% opacity
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
            ),
          ),
          // Right Diamond
          Positioned(
            right: 20,
            child: Transform.rotate(
              angle: 0.785398,
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFF5151C6).withOpacity(0.1), // 10% opacity
                      const Color(0xFF5151C6).withOpacity(0.5), // 50% opacity
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

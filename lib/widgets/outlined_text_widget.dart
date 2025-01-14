import 'package:flutter/material.dart';
import '../constant/app_colors.dart';

class OutlinedText extends StatelessWidget {
  final String text;

  const OutlinedText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.4,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 1.4
              ..color = AppColors.white,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.4,
            color: Colors.transparent,
          ),
        ),
      ],
    );
  }
}

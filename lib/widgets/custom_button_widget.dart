import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonLabel;

  const CustomButtonWidget({
    super.key,
    required this.onPressed,
    required this.buttonLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.gradientStart,
              AppColors.gradientEnd,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            buttonLabel,
            style: TextStyle(
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}

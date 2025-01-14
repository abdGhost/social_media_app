import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    super.key,
    required this.textLabel,
  });

  final String textLabel;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Handle forgot password logic
      },
      child: Text(
        textLabel,
        style: TextStyle(color: AppColors.primary),
      ),
    );
  }
}

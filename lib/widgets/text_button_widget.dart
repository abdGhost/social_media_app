import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    super.key,
    required this.textLabel,
    required this.onPressed,
  });

  final String textLabel;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        textLabel,
        style: TextStyle(color: AppColors.primary),
      ),
    );
  }
}

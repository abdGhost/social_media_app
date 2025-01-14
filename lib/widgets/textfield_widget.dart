import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class TextfieldWidget extends StatelessWidget {
  const TextfieldWidget({
    super.key,
    required this.labelText,
  });

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        filled: true,
        fillColor: AppColors.background,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
      ),
    );
  }
}

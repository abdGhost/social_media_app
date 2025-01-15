import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class SearchTextfieldWidget extends StatelessWidget {
  const SearchTextfieldWidget({
    super.key,
    required this.labelText,
  });

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(
                10.0), // Adjust padding for proper alignment
            child: Image.asset(
              'assets/icons/search.png', // Replace with your asset path
              width: 20, // Adjust the size as needed
              height: 20,
              fit: BoxFit.contain,
            ),
          ), // Search icon from assets
          filled: true,
          fillColor: AppColors.background, // Use your AppColors.background
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
        ),
      ),
    );
  }
}

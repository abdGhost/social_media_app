import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_media_app/widgets/outlined_text_widget.dart';

import '../constant/app_colors.dart';

class LoginBackgroundWidget extends StatelessWidget {
  const LoginBackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/splash_screen/bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.black.withOpacity(0.4),
                  AppColors.black.withOpacity(0.1),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/logo/logo.svg',
                    height: 20,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  OutlinedText(text: 'WELCOME')
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

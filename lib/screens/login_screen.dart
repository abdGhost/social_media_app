import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_media_app/widgets/outlined_text_widget.dart';
import 'package:social_media_app/widgets/socical_icon_button_widget.dart';
import '../constant/app_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Stack(
          children: [
            _buildBackground(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height - 300,
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(height: 30),
                        _buildTextField('Email'),
                        const SizedBox(height: 15),
                        _buildTextField('Password'),
                        const SizedBox(height: 15),
                        _buildForgotPasswordButton(),
                        const SizedBox(height: 15),
                        _buildLoginButton(),
                        const SizedBox(height: 40),
                        _buildSocialLoginText(),
                        const SizedBox(height: 8),
                        _buildSocialIcons(),
                        const SizedBox(height: 40),
                        _buildSignUpText(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBackground() {
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

  Widget _buildTextField(String labelText) {
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

  Widget _buildForgotPasswordButton() {
    return TextButton(
      onPressed: () {
        // Handle forgot password logic
      },
      child: const Text(
        'FORGOT PASSWORD',
        style: TextStyle(color: AppColors.primary),
      ),
    );
  }

  Widget _buildLoginButton() {
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
          onPressed: () {
            // Handle login logic
          },
          child: const Text(
            'LOG IN',
            style: TextStyle(
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSocialLoginText() {
    return const Text(
      'OR LOG IN BY',
      textAlign: TextAlign.center,
    );
  }

  Widget _buildSocialIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocicalIconButtonWidget(
          icon: FontAwesomeIcons.google,
          onPressed: () {
            // Handle Google login
          },
        ),
        const SizedBox(width: 16),
        SocicalIconButtonWidget(
          icon: FontAwesomeIcons.facebookF,
          onPressed: () {
            // Handle Facebook login
          },
        ),
      ],
    );
  }

  Widget _buildSignUpText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text('Don\'t have an account? '),
        Text(
          'SIGN UP',
          style: TextStyle(
            color: AppColors.primary,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

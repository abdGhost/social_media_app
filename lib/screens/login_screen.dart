import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_media_app/screens/forget_password_screen.dart';
import 'package:social_media_app/screens/signup_screen.dart';
import 'package:social_media_app/widgets/custom_button_widget.dart';
import 'package:social_media_app/widgets/login_background_widget.dart';
import 'package:social_media_app/widgets/socical_icon_button_widget.dart';
import 'package:social_media_app/widgets/text_button_widget.dart';
import 'package:social_media_app/widgets/textfield_widget.dart';
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
            LoginBackgroundWidget(),
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
                        TextfieldWidget(labelText: 'Email'),
                        const SizedBox(height: 15),
                        TextfieldWidget(labelText: 'Password'),
                        const SizedBox(height: 15),
                        TextButtonWidget(
                          textLabel: 'FORGOT PASSWORD',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (ctx) => ForgetPasswordScreen(),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 15),
                        CustomButtonWidget(
                          buttonLabel: 'Log in',
                          onPressed: () {},
                        ),
                        const SizedBox(height: 40),
                        _buildSocialLoginText(),
                        const SizedBox(height: 8),
                        _buildSocialIcons(),
                        const SizedBox(height: 40),
                        _buildSignUpText(context),
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

  Widget _buildSignUpText(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Don\'t have an account? '),
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (ctx) => SignUpScreen()));
          },
          child: Text(
            'SIGN UP',
            style: TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

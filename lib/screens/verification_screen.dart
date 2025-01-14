import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import '../widgets/custom_button_widget.dart';
import '../widgets/diamond_shape_container_widget.dart';
import '../widgets/login_background_widget.dart';
import '../widgets/textfield_widget.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Stack(
          children: [
            const LoginBackgroundWidget(),
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
                        Text(
                          'VERIFICATION',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                            color: AppColors.cardBackgroundColor,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const Center(
                            child: Text(
                              'A mesage wih verification code \n was sent to your mobile phone.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                        const TextfieldWidget(
                            labelText: 'Type verification code'),
                        const SizedBox(height: 40),
                        Text(
                          'RESEND CODE',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 20),
                        CustomButtonWidget(
                          buttonLabel: 'SEND',
                          onPressed: () {},
                        ),
                        const SizedBox(height: 10),
                        // Ensure DiamondShapeWidget has valid constraints
                        Center(
                          child: SizedBox(
                            width: 200,
                            child: const DiamondShapeWidget(),
                          ),
                        ),
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
}

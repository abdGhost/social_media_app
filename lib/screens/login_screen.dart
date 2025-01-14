import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Stack(
          children: [
            // Header Section
            Column(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/splash_screen/bg.png'), // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.4),
                          Colors.black.withOpacity(0.1),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'i.click',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'WELCOME',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Bottom Section with Rounded Top Corners
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height - 300, // Fills the space below header
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25), // Rounded top-left corner
                    topRight: Radius.circular(25), // Rounded top-right corner
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Email Input
                        TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFFF3F5F7), // Background color
                            labelStyle: const TextStyle(
                              color: Color(0xFFBDBDBD),
                              fontSize: 14,
                            ),
                            labelText: 'Email',
                            alignLabelWithHint: true, // Aligns label with placeholder when focused
                            contentPadding: const EdgeInsets.only(
                              left: 20, // Add left padding for placeholder
                              top: 10, // Adjust top padding if needed
                              bottom: 10,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        // Password Input
                        TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFFF3F5F7), // Background color
                            labelStyle: const TextStyle(
                              color: Color(0xFFBDBDBD),
                              fontSize: 14,
                            ),
                            labelText: 'Password',
                            alignLabelWithHint: true, // Aligns label with placeholder when focused
                            contentPadding: const EdgeInsets.only(
                              left: 20, // Add left padding for placeholder
                              top: 10, // Adjust top padding if needed
                              bottom: 10,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),

                        // Forgot Password
                        TextButton(
                          onPressed: () {
                            // Handle forgot password
                          },
                          child: const Text(
                            'FORGOT PASSWORD',
                            style: TextStyle(color: Colors.purple),
                          ),
                        ),

                        // Login Button
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: ElevatedButton(
                            onPressed: () {
                              // Handle login
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.purple,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              padding: const EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 40,
                              ),
                            ),
                            child: const Text(
                              'LOG IN',
                              style: TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),
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

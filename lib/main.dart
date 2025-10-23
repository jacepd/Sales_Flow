import 'package:flutter/material.dart';
import 'salesman_signup.dart';
import 'contractor_signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SalesFlow',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF4B986C),
        scaffoldBackgroundColor: const Color(0xFFF1F4F8),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Color(0xFF384E58)),
        ),
      ),
      home: const SignupPage(),
      routes: {
        '/salesman_signup': (context) => const SalesmanSignupPage(),
        '/contractor_signup': (context) => const ContractorSignupPage(),
      },
    );
  }
}

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F4F8),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // 🖼 Logo image
                  Image.asset(
                    'assets/images/logo.jpg', // replace with your image path
                    width: 150,
                    height: 150,
                    fit: BoxFit.contain,
                  ),

                  const SizedBox(height: 16),

                  // 🏷 Title and subtitle
                  const Text(
                    'SalesFlow',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0B191E),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Connect sales teams with contractors seamlessly',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF384E58),
                      height: 1.4,
                    ),
                  ),

                  const SizedBox(height: 32),

                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/salesman_signup');
                    },
                    child: Container(
                      // 🧍 Salesman button
                      width: double.infinity,
                      height: 120,
                      decoration: BoxDecoration(
                        color: const Color(0xFF4B986C),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 8,
                            color: Color(0x1A000000),
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: const BoxDecoration(
                                color: Color(0x33FFFFFF),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.trending_up_rounded,
                                color: Colors.white,
                                size: 32,
                              ),
                            ),
                            const SizedBox(width: 16),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "I'm a Salesman",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "Create sales and manage customer orders",
                                    style: TextStyle(
                                      color: Color(0xCCFFFFFF),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/contractor_signup');
                    },
                    child: Container(
                      // 🛠 Contractor button
                      width: double.infinity,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Color(0xFFC8D7E4), width: 2),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 8,
                            color: Color(0x0A000000),
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: const BoxDecoration(
                                color: Color(0x4D4B986C),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.construction_rounded,
                                color: Color(0xFF4B986C),
                                size: 32,
                              ),
                            ),
                            const SizedBox(width: 16),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "I'm a Contractor",
                                    style: TextStyle(
                                      color: Color(0xFF0B191E),
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "Browse available jobs and complete projects",
                                    style: TextStyle(
                                      color: Color(0xFF384E58),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 32),

                  // 🔗 Sign-in text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF384E58),
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF4B986C),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

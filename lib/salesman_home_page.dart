import 'package:flutter/material.dart';

class SalesmanHomePage extends StatelessWidget {
  const SalesmanHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F4F8),
      appBar: AppBar(
        title: const Text('SalesFlow - Salesman Home'),
        centerTitle: true,
        backgroundColor: const Color(0xFF4B986C),
        elevation: 2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 500),
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x1A000000),
                  blurRadius: 12,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.dashboard, size: 60, color: Color(0xFF4B986C)),
                const SizedBox(height: 16),
                const Text(
                  'Welcome, Salesman!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0B191E),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Manage your sales, track performance, and view assigned jobs.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Color(0xFF384E58)),
                ),
                const SizedBox(height: 32),

                // 🆕 New Sale Button
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/new-sale');
                  },
                  icon: const Icon(Icons.add_shopping_cart_rounded),
                  label: const Text('New Sale'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4B986C),
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                    textStyle: const TextStyle(fontSize: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),

                const SizedBox(height: 24),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.bar_chart_outlined),
                  label: const Text('View Performance'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4B986C),
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                    textStyle: const TextStyle(fontSize: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),

                const SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/');
                  },
                  child: const Text(
                    'Log Out',
                    style: TextStyle(
                      color: Color(0xFF4B986C),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

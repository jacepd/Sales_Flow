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
                  'Here you can manage leads, track your performance, and view assigned jobs.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Color(0xFF384E58)),
                ),
                const SizedBox(height: 32),
                ElevatedButton.icon(
                  onPressed: () {
                    // TODO: Add navigation to Leads Page
                  },
                  icon: const Icon(Icons.person_add_alt_1_outlined),
                  label: const Text('View Leads'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4B986C),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        vertical: 14, horizontal: 24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton.icon(
                  onPressed: () {
                    // TODO: Add navigation to Sales Analytics
                  },
                  icon: const Icon(Icons.bar_chart_outlined),
                  label: const Text('View Performance'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4B986C),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        vertical: 14, horizontal: 24),
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

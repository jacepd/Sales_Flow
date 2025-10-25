import 'package:flutter/material.dart';

class ContractorHomePage extends StatelessWidget {
  const ContractorHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contractor Home')),
      body: const Center(child: Text('Welcome Contractor!')),
    );
  }
}

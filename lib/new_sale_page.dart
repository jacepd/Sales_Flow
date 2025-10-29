import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class NewSalePage extends StatefulWidget {
  const NewSalePage({super.key});

  @override
  _NewSalePageState createState() => _NewSalePageState();
}

class _NewSalePageState extends State<NewSalePage> {
  final _formKey = GlobalKey<FormState>();
  final _customerNameController = TextEditingController();
  final _addressController = TextEditingController();
  final _priceController = TextEditingController();
  final _notesController = TextEditingController();

  int test = 0;

  Future<void> _submitSale() async {
    if (_formKey.currentState!.validate()) {
      try {
        await FirebaseFirestore.instance.collection('sales').add({
          'customerName': _customerNameController.text.trim(),
          'address': _addressController.text.trim(),
          'price': double.tryParse(_priceController.text.trim()) ?? 0.0,
          'notes': _notesController.text.trim(),
          'timestamp': FieldValue.serverTimestamp(),
        });

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Sale submitted successfully!')),
        );

        Navigator.pop(context); // Go back to home page after submission
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error submitting sale: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Sale'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _customerNameController,
                decoration: const InputDecoration(labelText: 'Customer Name'),
                validator: (value) => value!.isEmpty ? 'Required' : null,
              ),
              TextFormField(
                controller: _addressController,
                decoration: const InputDecoration(labelText: 'Address'),
                validator: (value) => value!.isEmpty ? 'Required' : null,
              ),
              TextFormField(
                controller: _priceController,
                decoration: const InputDecoration(labelText: 'Price (\$)'),
                keyboardType: TextInputType.number,
                validator: (value) => value!.isEmpty ? 'Required' : null,
              ),
              TextFormField(
                controller: _notesController,
                decoration: const InputDecoration(labelText: 'Notes'),
                maxLines: 2,
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: _submitSale,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: const Text('Submit Sale'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  final int count;

  const NextScreen({super.key, required this.count});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Text(count.toString()),
      ),
    );
  }
}

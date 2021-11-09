import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Sample'),
          ),
        ),
      ),
    ),
  );
}

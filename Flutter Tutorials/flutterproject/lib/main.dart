import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        // brightness: Brightness.dark,
      ),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          child: const Icon(Icons.person),
        ),
        body: const Center(
          child: Text('Hi there!'),
        ),
        appBar: AppBar(
          // backgroundColor: Colors.red,
          title: const Text('Flutterism'),
        ),
      ),
    ),
  );
}

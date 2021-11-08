import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      /// A one-line description used by the device to identify the app for the user.
      title: 'Flutter Basic',
      /// "DEBUG" banner in debug mode set to false
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Basic'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    ),
  );
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

main() {
  // runApp used to run the app
  runApp(
    // MaterialApp is the root widget of the Flutter application
    MaterialApp(
      // debugShowCheckedModeBanner is used to show/hide the debug banner
      debugShowCheckedModeBanner: false,
      // Scaffold is a widget that provides Material Design visual layout
      home: Scaffold(
        // AppBar is a widget that displays a AppBar
        appBar: AppBar(
          // Text widget is used to display text
          title: Text('App Bar'),
        ),
        // Center widget is used to center the child widget
        body: Center(
          child: Text('This is my Body'),
        ),
      ),
    ),
  );
}

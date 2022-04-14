// Material Package
import 'package:flutter/material.dart';

main() {
  /// runApp(): This is the main function that runs the app.
  runApp(
    /// MaterialApp: This is the root widget of the app.
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello World',
      /// Scaffold: This is the main widget of the app.
      home: Scaffold(
        /// App Bar: This is the app bar of the app.
        appBar: AppBar(
          centerTitle: true,
          /// title: This is the title of the App Bar.
          title: const Text('Hello App Bar'),
        ),
        /// Center: This widget is used to center the text.
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    ),
  );
}

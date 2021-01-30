// Material UI Package
import 'package:flutter/material.dart';

// Main Funtion just like other languages do have i.e Java and C# etc
main() {
  // This is the main funtion that runs App
  runApp(MyApp());
}

// This is Stateful Widget
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int episode = 0;

  // Function for increasing Episode Number
  increaseEpisode() {
    setState(() {
      episode++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // MaterialApp Widget (Root Widget for Flutter App)
    return MaterialApp(
      // Setting Title of Browser Window
      title: 'Fluterism',
      // Removes the debug Banner
      debugShowCheckedModeBanner: false,
      // Setting Theme of App
      theme: ThemeData(primarySwatch: Colors.red),
      // Scaffold Widget
      home: Scaffold(
        // AppBar Widget
        appBar: AppBar(
          // Text Widget
          title: Text('Flutterism | Episode $episode'),
          // Take Title to center
          centerTitle: true,
        ),
        // Center Widget put the child in center
        body: Center(
          child: Text('Episode $episode of Flutterism'),
        ),
        // Flutter Action Button
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => increaseEpisode(),
        ),
      ),
    );
  }
}

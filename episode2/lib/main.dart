// Flutter Column Widget Tutorial
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Visual scaffold for material design widgets
      home: Scaffold(
        // Material design app bar
        appBar: AppBar(
          title: Text('Flutterism\nColumn Widget'),
        ),
        // Scrolling Widget
        // A box in which a single widget can be scrolled
        body: SingleChildScrollView(
          // Creating a vertical array of children
          child: Column(
            // Main Axis Alignment
            mainAxisAlignment: MainAxisAlignment.start,
            // Cross Axis Alignment
            crossAxisAlignment: CrossAxisAlignment.start,
            // Create a vertical array of children
            children: [
              // Create a widget that insets its child
              Padding(
                padding: const EdgeInsets.all(4.0),
                // Material design card
                child: Card(
                  elevation: 4.0,
                  // Create a list tile
                  child: ListTile(
                    leading: Icon(Icons.play_arrow),
                    title: Text('Flutterism'),
                    subtitle: Text('Episode 1'),
                    trailing: Icon(Icons.thumb_up),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  elevation: 4.0,
                  child: ListTile(
                    leading: Icon(Icons.play_arrow),
                    title: Text('Flutterism'),
                    subtitle: Text('Episode 2'),
                    trailing: Icon(Icons.thumb_up),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  elevation: 4.0,
                  child: ListTile(
                    leading: Icon(Icons.play_arrow),
                    title: Text('Flutterism'),
                    subtitle: Text('Episode 3'),
                    trailing: Icon(Icons.thumb_up),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  elevation: 4.0,
                  child: ListTile(
                    leading: Icon(Icons.play_arrow),
                    title: Text('Flutterism'),
                    subtitle: Text('Episode 4'),
                    trailing: Icon(Icons.thumb_up),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  elevation: 4.0,
                  child: ListTile(
                    leading: Icon(Icons.play_arrow),
                    title: Text('Flutterism'),
                    subtitle: Text('Episode 5'),
                    trailing: Icon(Icons.thumb_up),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  elevation: 4.0,
                  child: ListTile(
                    leading: Icon(Icons.play_arrow),
                    title: Text('Flutterism'),
                    subtitle: Text('Episode 6'),
                    trailing: Icon(Icons.thumb_up),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  elevation: 4.0,
                  child: ListTile(
                    leading: Icon(Icons.play_arrow),
                    title: Text('Flutterism'),
                    subtitle: Text('Episode 7'),
                    trailing: Icon(Icons.thumb_up),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  elevation: 4.0,
                  child: ListTile(
                    leading: Icon(Icons.play_arrow),
                    title: Text('Flutterism'),
                    subtitle: Text('Episode 8'),
                    trailing: Icon(Icons.thumb_up),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  elevation: 4.0,
                  child: ListTile(
                    leading: Icon(Icons.play_arrow),
                    title: Text('Flutterism'),
                    subtitle: Text('Episode 9'),
                    trailing: Icon(Icons.thumb_up),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  elevation: 4.0,
                  child: ListTile(
                    leading: Icon(Icons.play_arrow),
                    title: Text('Flutterism'),
                    subtitle: Text('Episode 10'),
                    trailing: Icon(Icons.thumb_up),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  elevation: 4.0,
                  child: ListTile(
                    leading: Icon(Icons.play_arrow),
                    title: Text('Flutterism'),
                    subtitle: Text('Episode 11'),
                    trailing: Icon(Icons.thumb_up),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  elevation: 4.0,
                  child: ListTile(
                    leading: Icon(Icons.play_arrow),
                    title: Text('Flutterism'),
                    subtitle: Text('Episode 12'),
                    trailing: Icon(Icons.thumb_up),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
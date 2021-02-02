// Flutter Scroll Tutorial
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fluuterism | Episode 3',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutterism | Episode 3'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            // Verticle Scroll is a box in which a single widget can be scrolled
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SingleChildScrollView(
                    // Horizontal Scroll along horizontal axis
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        // Material design card
                        Card(
                          // Different ways to clip a widget's content
                          clipBehavior: Clip.antiAlias,
                          // Container is a widget that combines common painting, positioning, and sizing widgets
                          child: Container(
                            height: 80,
                            width: 200.0,
                            color: Colors.blue[400],
                          ),
                        ),
                        // A fixed size box
                        SizedBox(width: 10),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          child: Container(
                            height: 80,
                            width: 200.0,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(width: 10),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          child: Container(
                            height: 80,
                            width: 200.0,
                            color: Colors.blue[600],
                          ),
                        ),
                        SizedBox(width: 10),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          child: Container(
                            height: 80,
                            width: 200.0,
                            color: Colors.blue[700],
                          ),
                        ),
                        SizedBox(width: 10),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          child: Container(
                            height: 80,
                            width: 200.0,
                            color: Colors.blue[800],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.play_arrow),
                      trailing: Icon(Icons.thumb_up),
                      title: Text('Episode 1'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.play_arrow),
                      trailing: Icon(Icons.thumb_up),
                      title: Text('Episode 2'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.play_arrow),
                      trailing: Icon(Icons.thumb_up),
                      title: Text('Episode 3'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.play_arrow),
                      trailing: Icon(Icons.thumb_up),
                      title: Text('Episode 4'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.play_arrow),
                      trailing: Icon(Icons.thumb_up),
                      title: Text('Episode 5'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.play_arrow),
                      trailing: Icon(Icons.thumb_up),
                      title: Text('Episode 6'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.play_arrow),
                      trailing: Icon(Icons.thumb_up),
                      title: Text('Episode 7'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.play_arrow),
                      trailing: Icon(Icons.thumb_up),
                      title: Text('Episode 8'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.play_arrow),
                      trailing: Icon(Icons.thumb_up),
                      title: Text('Episode 9'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.play_arrow),
                      trailing: Icon(Icons.thumb_up),
                      title: Text('Episode 10'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.play_arrow),
                      trailing: Icon(Icons.thumb_up),
                      title: Text('Episode 11'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.play_arrow),
                      trailing: Icon(Icons.thumb_up),
                      title: Text('Episode 12'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.play_arrow),
                      trailing: Icon(Icons.thumb_up),
                      title: Text('Episode 13'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.play_arrow),
                      trailing: Icon(Icons.thumb_up),
                      title: Text('Episode 14'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.play_arrow),
                      trailing: Icon(Icons.thumb_up),
                      title: Text('Episode 15'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

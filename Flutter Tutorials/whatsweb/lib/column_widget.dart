import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Widget'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text('MainAxisAlignment.start'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.purple,
                ),
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.deepPurple,
                ),
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.indigo,
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text('MainAxisAlignment.end'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.purple,
                ),
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.deepPurple,
                ),
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.indigo,
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text('MainAxisAlignment.center'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.purple,
                ),
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.deepPurple,
                ),
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.indigo,
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text('MainAxisAlignment.spaceAround'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.purple,
                ),
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.deepPurple,
                ),
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.indigo,
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text('MainAxisAlignment.spaceBetween'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.purple,
                ),
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.deepPurple,
                ),
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.indigo,
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text('MainAxisAlignment.spaceEvenly'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.purple,
                ),
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.deepPurple,
                ),
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.indigo,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

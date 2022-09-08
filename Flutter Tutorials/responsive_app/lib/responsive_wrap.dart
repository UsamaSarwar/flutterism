import 'package:flutter/material.dart';

class ResponsiveWrap extends StatelessWidget {
  const ResponsiveWrap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Wrap'),
      ),
      body: Center(
        child: Wrap(
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          
          spacing: 10,
          runSpacing: 10,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.purple,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.orange,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.pink,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.brown,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}

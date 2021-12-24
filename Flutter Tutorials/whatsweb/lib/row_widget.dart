import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Widget'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Text('MainAxisAlignment.start'),
          ),
          Row(
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
          Row(
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
          Row(
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
          Row(
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
          Row(
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
          Row(
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
    );
  }
}

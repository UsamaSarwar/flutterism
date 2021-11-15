import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ListTile(
            leading: Image.network(
              'https://www.usama.dev/favicon.png',
              height: 45,
              width: 45,
            ),
            title: SizedBox(
              height: 40.0,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(45.0),
                  ),
                  hintText: 'What\'s on your mind?',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    height: 1.0,
                  ),
                ),
              ),
            ),
          ),
        ),
        const Divider(
          height: 1.0,
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                  Text('Live')
                ],
              ),
              Container(
                width: 1.0,
                height: 17.0,
                color: Colors.grey,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.photo,
                    color: Colors.green,
                  ),
                  Text('Photo')
                ],
              ),
              Container(
                width: 1.0,
                height: 17.0,
                color: Colors.grey,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.video_call,
                    color: Colors.purple,
                  ),
                  Text('Room')
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

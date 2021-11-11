import 'package:flutter/material.dart';

class ChatTab extends StatelessWidget {
  const ChatTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<String> users = [
      'Usama Sarwar',
      'Abdullah Naveed',
      'Uzma Ali',
      'Mehwish Hayat',
      'Anreios',
      'Usama Sarwar',
      'Abdullah Naveed',
      'Uzma Ali',
      'Mehwish Hayat',
      'Anreios',
      'Usama Sarwar',
      'Abdullah Naveed',
      'Uzma Ali',
      'Mehwish Hayat',
      'Anreios',
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          for (int i = 0; i < 15; i++)
            ListTile(
              leading: const Icon(
                Icons.person_pin,
                size: 50.0,
              ),
              title: Text(users[i]),
              subtitle: const Text('Hi, How are you?'),
              trailing: const Text('10:21'),
            ),
        ],
      ),
    );
  }
}

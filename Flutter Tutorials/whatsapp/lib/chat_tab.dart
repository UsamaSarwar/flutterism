import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/chat_screen.dart';
import 'package:whatsapp/constants.dart';

class ChatTab extends StatelessWidget {
  const ChatTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
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
              onTap: ()=> Get.to(ChatScreen(users[i])),
            ),
        ],
      ),
    );
  }
}

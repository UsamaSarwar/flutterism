import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatScreen extends StatefulWidget {
  final String users;
  const ChatScreen(this.users, {Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle:false ,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Row(
            children: const [
              Icon(Icons.arrow_back_ios_new, size: 10),
              Icon(Icons.person_pin, size: 30),
            ],
          ),
        ),
        title: Column(
          children: [
            Text(widget.users),
            Text(
              'last seen 10:00',
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey[100],
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert_rounded),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.message,
              size: 100.0,
              color: Colors.grey,
            ),
            Text('Send a message to ${widget.users}')
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/chat_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        primaryColor: Colors.teal[800],
      ),
      home: DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal[800],
            title: const Text('WhatsApp'),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              )
            ],
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(text: 'CHATS'),
                Tab(text: 'STAUS'),
                Tab(text: 'CALLS'),
              ],
            ),
          ),
          body: const TabBarView(
            children: <Widget>[
              Center(
                child: Text("Camera is under Development"),
              ),
              ChatTab(),
              Center(
                child: Text("Status is under Development"),
              ),
              Center(
                child: Text("Call is under Development"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:facebook/home_tab.dart';
import 'package:facebook/notification_tab.dart';
import 'package:flutter/material.dart';
import 'package:facebook/group_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Facebook',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue[700],
        iconTheme: IconThemeData(color: Colors.blue[700]),
        primaryIconTheme: IconThemeData(color: Colors.blue[700]),
      ),
      home: DefaultTabController(
        initialIndex: 0,
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'facebook',
              style: TextStyle(
                color: Colors.blue[700],
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.blue[700],
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.chat,
                    color: Colors.blue[700],
                  ))
            ],
            bottom: TabBar(
              unselectedLabelColor: Colors.grey[700],
              labelColor: Colors.blue[700],
              tabs: const <Widget>[
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.groups)),
                Tab(icon: Icon(Icons.live_tv)),
                Tab(icon: Icon(Icons.flag)),
                Tab(icon: Icon(Icons.menu)),
              ],
            ),
          ),
          body: const TabBarView(
            children: <Widget>[
              HomeTab(),
              GroupTab(),
              Center(
                child: Text("Status is under Development"),
              ),
              NotificationTab(),
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

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        // Profile page content goes here
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 25),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/usama.png'),
                    radius: 100,
                  ),
                ),
              ),
              const Text(
                'USAMA SARWAR',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const Text(
                '@UsamaSarwar',
                style: TextStyle(
                  fontSize: 15,
                  // fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 30,
                    onPressed: () {},
                    icon: const Icon(Icons.call),
                  ),
                  IconButton(
                    iconSize: 30,
                    onPressed: () {},
                    icon: const Icon(Icons.email),
                  ),
                  IconButton(
                    iconSize: 30,
                    onPressed: () {},
                    icon: const Icon(Icons.location_on),
                  ),
                ],
              ),
              const Card(
                child: ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Full Name'),
                  subtitle: Text('Usama Sarwar'),
                ),
              ),
              const Card(
                child: ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Email'),
                  subtitle: Text('contact@usama.dev'),
                ),
              ),
              const Card(
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Phone'),
                  subtitle: Text('+92-31-0000-777-3'),
                ),
              ),
              const Card(
                child: ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Address'),
                  subtitle: Text('Faisalabad, Pakistan'),
                ),
              ),
            ],
          ),
        ));
  }
}

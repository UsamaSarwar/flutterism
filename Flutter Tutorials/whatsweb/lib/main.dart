import 'package:flutter/material.dart';
import 'package:whatsweb/home.dart';

void main() => runApp(const WhatsWeb());

class WhatsWeb extends StatelessWidget {
  const WhatsWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsWeb',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        primaryColor: Colors.purple,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: Colors.purple,
      ),
      home: const Home(),
    );
  }
}

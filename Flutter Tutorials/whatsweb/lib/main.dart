import 'package:flutter/material.dart';
import 'package:whatsweb/profile.dart';
// import 'package:whatsweb/column_row.dart';
// import 'package:whatsweb/column_widget.dart';
// import 'package:whatsweb/row_widget.dart';

void main() => runApp(const WhatsWeb());

class WhatsWeb extends StatelessWidget {
  const WhatsWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsWeb',
      // themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        primaryColor: Colors.purple,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryColor: Colors.deepPurple,
      ),
      // home: const RowWidget(),
      home: const Profile(),
    );
  }
}

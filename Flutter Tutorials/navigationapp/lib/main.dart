import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigationapp/screen1.dart';
import 'package:navigationapp/screen2.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        // brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('HOME'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.to(const Screen1());
                },
                child: const Text('SCREEN 1'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(const Screen2());
                },
                child: const Text('SCREEN 2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

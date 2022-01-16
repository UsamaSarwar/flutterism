// Change Color AppBar
import 'package:dynamicappbar/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final Controller _controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'State Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Obx(
        () => Scaffold(
          appBar: AppBar(
            title: const Text('State Management'),
            backgroundColor: _controller.appBarColor.value,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _controller.appBarColor.value = Colors.blue,
                  child: const Text('Blue Color'),
                ),
                ElevatedButton(
                  onPressed: () => _controller.appBarColor.value = Colors.purple,
                  child: const Text('Purple Color'),
                ),
                ElevatedButton(
                  onPressed: () => _controller.appBarColor.value = Colors.yellow,
                  child: const Text('Yellow Color'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

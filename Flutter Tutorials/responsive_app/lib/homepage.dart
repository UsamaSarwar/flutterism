import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_app/responsive_wrap.dart';
import 'package:responsive_app/sized.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive'),
        actions: [
          IconButton(
            icon: const Icon(Icons.wrap_text),
            onPressed: () {
              Get.to(const Sized());
            },
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              Get.to(const ResponsiveWrap());
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity),
          Text(
            context.isPortrait ? 'Portrait' : 'Landscape',
            style: const TextStyle(
              fontSize: 100,
            ),
          ),
          Text(
            '${Get.width.toInt()} x ${Get.height.toInt()}',
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}

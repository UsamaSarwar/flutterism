import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Sized extends StatelessWidget {
  const Sized({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: SingleChildScrollView(
        //     scrollDirection: Axis.horizontal,
        //     child: Row(
        //       children: const [
        //         Text(
        //             'Responsive Text is very long to be handled and that\'s why we have to use FittedBox'),
        //       ],
        //     )),
        title: const FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
              'Responsive Text is very long to be handled and that\'s why we have to use FittedBox'),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: Get.width,
          child: const FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'Responsive Text',
            ),
          ),
        ),
      ),
    );
  }
}

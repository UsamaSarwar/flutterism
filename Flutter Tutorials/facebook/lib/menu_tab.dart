import 'package:flutter/material.dart';

class MenuTab extends StatelessWidget {
  const MenuTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Column(
          children: [
            Card(
              elevation: 9,
              child: SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width / 2.5,
                child: const Center(
                  child: Text('Sample Text'),
                ),
              ),
            ),
            Card(
              child: SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width / 2.5,
                child: const Center(
                  child: Text('Sample Text'),
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Card(
              child: SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width / 2.5,
                child: const Center(
                  child: Text('Sample Text'),
                ),
              ),
            ),
            Card(
              child: SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width / 2.5,
                child: const Center(
                  child: Text('Sample Text'),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

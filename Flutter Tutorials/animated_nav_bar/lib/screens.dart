import 'package:flutter/cupertino.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Screen 1'),
    );
  }
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Screen 2'),
    );
  }
}


class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Screen 3'),
    );
  }
}


class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Screen 4'),
    );
  }
}



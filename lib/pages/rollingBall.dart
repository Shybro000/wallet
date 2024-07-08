import 'package:flutter/material.dart';

class RollingBall extends StatefulWidget {
  const RollingBall({super.key});

  @override
  State<RollingBall> createState() => _RollingBallPageState();
}

class _RollingBallPageState extends State<RollingBall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247,247,247,1),
      appBar: AppBar(
        title: const Text('rolling'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('rolling'),
          onPressed: () {},
        ),
      ),
    );
  }
}

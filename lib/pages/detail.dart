import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            child: const Text('detail'),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application/component/gamesCard.dart';
import 'package:flutter_application/component/headerBanner.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _MyHistoryPageState();
}

class _MyHistoryPageState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(247,247,247,1),
      appBar: AppBar(
        title: const Text('History'),
      ),
      body:Row(
        children: [
          // gameCards(),
          HeadBanner()
        ],
      ),
    );
  }
}

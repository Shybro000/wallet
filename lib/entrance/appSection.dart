import 'package:flutter/material.dart';
import 'package:flutter_application/layout.dart';

class AppSection extends StatefulWidget {
  const AppSection({super.key});

  @override
  State<AppSection> createState() => _AppSection();
}

class _AppSection extends State<AppSection> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: const BottomTabsWidget(),
    );
  }
}

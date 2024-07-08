import 'package:flutter/material.dart';
import 'dart:ui';

class WalletDetails extends StatefulWidget {
  const WalletDetails({super.key});

  @override
  State<WalletDetails> createState() => _WalletDetailsState();
}

class _WalletDetailsState extends State<WalletDetails> {
  String selectedOption = 'Select an option';
  String selectedSubOption = 'Select a sub option';
  String selectedSubSubOption = 'Select a sub sub option';

  @override
  Widget build(BuildContext context) {
    const List<String> list = ['Option 1', 'Option 2', 'Option 3'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('wallet'),
      ),
      body: Container(
        child: Stack()
      ),
    );
  }
}

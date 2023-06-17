import 'dart:math';
import 'package:flutter/material.dart';

class QuotePage extends StatefulWidget {
  const QuotePage({super.key});

  @override
  State<QuotePage> createState() => _QuotePageState();
}

class _QuotePageState extends State<QuotePage> {
  int _randomNumber = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 100),
          Align(
            alignment: Alignment.bottomCenter,
              child: Image.asset('assets/images/$_randomNumber.jpg')),
          OutlinedButton(
              onPressed: () {
                _generateRandomNumber();
              },
              child: const Text(
                "Another quote",
              ))
        ],
      ),
    );
  }

  void _generateRandomNumber() {
    setState(() {
      _randomNumber = Random().nextInt(5) + 1;
    });
  }
}

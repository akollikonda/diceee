import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Text(
            'Diceee',
            style: TextStyle(
              color: Color.fromARGB(255, 208, 13, 13),
            ),
          ),
        ),
        body: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftInitialValue = 1;
  int rightInitialValue = 1;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          leftInitialValue = 1 + Random().nextInt(6);
          rightInitialValue = 1 + Random().nextInt(6);
        });
      },
      child: Center(
        child: Row(
          children: [
            Expanded(
                child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Image.asset('images/dice$leftInitialValue.png'))),
            Expanded(
                child: Padding(
              padding: EdgeInsets.all(16),
              child: Image.asset('images/dice$rightInitialValue.png'),
            )),
          ],
        ),
      ),
    );
  }
}

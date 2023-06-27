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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                  onPressed: () {
                    print("Dice1 pressed");
                  },
                  child: Image.asset('images/dice1.png'))),
          Expanded(
              child: TextButton(
            onPressed: () {
              print("Dice2 pressed");
            },
            child: Image.asset('images/dice1.png'),
          )),
        ],
      ),
    );
  }
}

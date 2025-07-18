import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
              child: const Text(
            'Dicee',
            style: TextStyle(color: Colors.deepPurple),
          )),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 6;
  int rightDiceNumber = 6;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            leftDiceNumber = Random().nextInt(6) + 1;
            rightDiceNumber = Random().nextInt(6) + 1;
            print(leftDiceNumber);
          });
        },
        child: Row(
          children: [
            Expanded(
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ],
        ),
      ),
    );
  }
}

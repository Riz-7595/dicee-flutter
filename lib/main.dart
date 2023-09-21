import "dart:math";

import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dicee'),
        ),
        body: Dicee(),
      ),
    ),
  );
}

class Dicee extends StatefulWidget {
  const Dicee({super.key});

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int leftDie = 1;
  int rightDie = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Image.asset("images/dice$leftDie.png"),
                onTap: () {
                  setState(
                    () {
                      leftDie = Random().nextInt(6) + 1;
                    },
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Image.asset("images/dice$rightDie.png"),
                onTap: () {
                  setState(
                    () {
                      rightDie = Random().nextInt(6) + 1;
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

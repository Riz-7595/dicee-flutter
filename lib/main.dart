import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
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

class Dicee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                child: Image.asset("images/dice1.png"),
                onPressed: () {
                  print('Left Die');
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Image.asset("images/dice2.png"),
                onPressed: () {
                  print('Right Die');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

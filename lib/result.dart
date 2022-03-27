import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = "You did it!!";
    if (resultScore < 100) {
      resultText = "You're not so good.";
    } else if (resultScore < 50) {
      resultText = "Bad bad! Really Bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text("Restart Quiz!!"),
            style: TextButton.styleFrom(primary: Colors.red[900]),
          ),
        ],
      ),
    );
  }
}

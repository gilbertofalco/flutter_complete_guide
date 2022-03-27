import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
//   const Answer
// ({Key? key}) : super(key: key);
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text(answerText),
        style: ElevatedButton.styleFrom(
          primary: Colors.red[100],
          onPrimary: Colors.grey[600],
        ),
        // style: ButtonStyle(
        //   foregroundColor: MaterialStateProperty.all(Colors.amber),
        //   backgroundColor: MaterialStateProperty.all(Colors.green),
        // ),
      ),
    );
  }
}

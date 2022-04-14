// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  Function reset;
  ResetButton(this.reset);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        reset();
      },
      child: Text("Reset"),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    );
  }
}

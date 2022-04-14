import 'package:flutter/material.dart';

class Move extends StatelessWidget {
  int move;
  Move(this.move);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12),
      child: Text("Move: ${move}",style: TextStyle(color: Colors.white,decoration: TextDecoration.none,fontSize:18 ),),

    );
  }
}

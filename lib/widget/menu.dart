import 'package:flutter/material.dart';
import 'package:puzzle_game/widget/move.dart';
import 'package:puzzle_game/widget/resetbutton.dart';
import 'package:puzzle_game/widget/time.dart';

class Menu extends StatelessWidget {
  Function reset;
  int move;
  int secondsPassed;
  var size;
  Menu(this.reset, this.move, this.secondsPassed, this.size);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ResetButton(reset), Move(move), Time(secondsPassed)],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../widget/gridbutton.dart';

class Grid extends StatelessWidget {
  var number = [];
  var size;
  Function clickGrid;

  Grid(this.number, this.size, this.clickGrid);

  @override
  Widget build(BuildContext context) {
    var height = size.height;

    return Container(
      height: height * 0.60,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, mainAxisSpacing: 5, crossAxisSpacing: 5),
          itemBuilder: (context, index) {
            return number[index] != 0
                ? GridButton('${number[index]}', () {
                    clickGrid(index);
                  })
                : SizedBox.shrink();
          },
          itemCount: number.length,
        ),
      ),
    );
  }
}

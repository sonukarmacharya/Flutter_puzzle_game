import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:puzzle_game/board.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const SliddingPuzzle());
}

class SliddingPuzzle extends StatelessWidget {
  const SliddingPuzzle({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Slidding Puzzle',
      debugShowCheckedModeBanner: false,
      home: Board(),
    );
  }
}

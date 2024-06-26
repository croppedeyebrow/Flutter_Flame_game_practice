import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flame_game/screen/racing_game.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GameWidget(
        game: RacingGame(),
      ),
    );
  }
}

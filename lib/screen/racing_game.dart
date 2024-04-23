import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flame_game/components/player.dart';

class RacingGame extends FlameGame {
  ///게임 로직에 사용될 오브젝트 클래스 선언
  late Player player;
  // late MoveButton leftMoveBtn, rightMoveBtn;
  // List<LifeHeart> lifeHearts = [];

  //로드 될 이미지 변수 선언
  late Sprite playerSprite;
  late Sprite obstacleSprite;
  late Sprite leftMoveButtonSprite;
  late Sprite rightMoveButtonSprite;

  @override
  FutureOr<void> onLoad() async {
    Image playerImg = await images.load('racing_car.png');
    Image obstacleImg = await images.load('obstacle.png');
    Image heartImg = await images.load('heart.png');
    Image leftMoveImg = await images.load('left.png');
    Image rightMoveImg = await images.load('right.png');

    // 2. 스프라이트 오브젝트 생성

    playerSprite = Sprite(playerImg);
    obstacleSprite = Sprite(obstacleImg);
    leftMoveButtonSprite = Sprite(leftMoveImg);
    rightMoveButtonSprite = Sprite(rightMoveImg);

    // 3. 플레이어 오브젝트 생성

    player = Player(
        position: Vector2(size.x * 0.25, size.y - 20),
        playerSprite: playerSprite,
        damageCallback: onDamage);

    return super.onLoad();
  }

  void onDamage() {
    print('플레이어 데미지 입음');
  }
}

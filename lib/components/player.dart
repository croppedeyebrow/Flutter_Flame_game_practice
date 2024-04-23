import 'dart:ui';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter_flame_game/components/obstacle.dart';

//레이싱카 오브젝트
class Player extends SpriteComponent with CollisionCallbacks {
  Sprite playerSprite;
  final VoidCallback damageCallback;

  // 플레이어(레이싱카) 가 최초 생성 될 때 초기화되는 값(위치, 사이즈 ,앵커)
  Player(
      {required position,
      required this.playerSprite,
      required this.damageCallback})
      : super(
          position: position,
          size: Vector2.all(48),
          anchor: Anchor.bottomCenter,
        );

  @override
  Future<void> onLoad() async {
    super.onLoad();
    //스프라이트 이미지 설정
    sprite = playerSprite;

    //충돌감지 컴포넌트를 레이싱카에 적용
    add(RectangleHitbox());
  }

  void onCollisionStart(
      Set<Vector2> intersectionPoints, PositionComponent other) {
    //충돌이 감지되면 데미지 콜백을 실행

    if (other is Obstacle) {
      damageCallback.call();
    } else {
      super.onCollisionStart(intersectionPoints, other);
    }
  }
}

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/extensions.dart';

class Obstacle extends SpriteComponent with HasGameRef, CollisionCallbacks {
  Sprite obstacleSprite;

  // 플레이어(레이싱카) 가 최초 생성 될 때 초기화되는 값(위치, 사이즈 ,앵커)
  Obstacle({required position, required this.obstacleSprite})
      : super(
          position: position,
          size: Vector2.all(64),
          anchor: Anchor.bottomCenter,
        );

  @override
  Future<void> onLoad() async {
    super.onLoad();
    //스프라이트 이미지 설정
    sprite = obstacleSprite;

    //충돌감지 컴포넌트를 레이싱카에 적용
    add(RectangleHitbox());
  }

  @override
  void update(double dt) {
    super.update(dt);

    //장애물이 자동으로 이동되게
    position.y = position.y + 5;

    //화면 밖으로 나가면 제거
    if (position.y - size.y > gameRef.size.y) {
      removeFromParent();
    }
  }
}

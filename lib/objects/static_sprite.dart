import 'package:flame/components.dart';
import 'package:hot_cold/game.dart';

class StaticSprite extends SpriteComponent with HasGameRef<GameClass> {
  final String spritePath;
  StaticSprite({required this.spritePath, double size = 8})
      : super(size: Vector2.all(size), anchor: Anchor.center);

  @override
  void onLoad() {
    final image = game.images.fromCache(spritePath);
    sprite = Sprite(image);
  }
}

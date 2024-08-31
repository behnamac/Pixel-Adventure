import 'dart:async';

import 'package:flame/components.dart';
import 'package:my_advanture/pixel_advanture.dart';

class Player extends SpriteAnimationComponent with HasGameRef<PixelAdvanture> {
  late final SpriteAnimation idleAnimation;
  final double stepTime = 0.05;
  @override
  FutureOr<void> onLoad() {
    _loadAllAnimation();
    return super.onLoad();
  }

  void _loadAllAnimation() {
    idleAnimation = SpriteAnimation.fromFrameData(
        game.images.fromCache(
            'assets/images/Main Characters/Ninja Frog/Idle (32x32).png'),
        SpriteAnimationData.sequenced(
            amount: 11, stepTime: stepTime, textureSize: Vector2.all(32)));
  }
}

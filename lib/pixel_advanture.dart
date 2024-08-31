import 'dart:async';
import 'package:my_advanture/Level/Level.dart';
import 'package:flame/game.dart';
import 'package:flame/components.dart';

class PixelAdvanture extends FlameGame {
  late final CameraComponent cam;
  final world = Level();
  @override
  FutureOr<void> onLoad() async {
    await images.loadAllImages();
    cam = CameraComponent.withFixedResolution(
        world: world, width: 640, height: 360);
    cam.viewfinder.anchor = Anchor.topLeft;

    addAll([cam, world]);
    return super.onLoad();
  }
}

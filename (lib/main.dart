import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MobileAds.instance.initialize(); // تهيئة الإعلانات
  runApp(const MyArcadeApp());
}

class MyArcadeApp extends StatelessWidget {
  const MyArcadeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              // 1. شاشة اللعبة الأساسية
              GameWidget(game: SimpleArcadeGame()),

              // 2. إعلان البانر المدمج في أعلى الشاشة
              const Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 50,
                  child: Text("مكاني لإعلان البانر 📢", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// محرك اللعبة باستخدام Flame
class SimpleArcadeGame extends FlameGame with TapCallbacks {
  late SpriteComponent player;

  @override
  Future<void> onLoad() async {
    // خلفية اللعبة
    add(RectangleComponent(
      size: size,
      paint: Paint()..color = const Color(0xFF1E1E2C),
    ));

    // إضافة اللاعب في منتصف الشاشة من الأسفل
    player = SpriteComponent()
      ..size = Vector2(60, 60)
      ..position = Vector2(size.x / 2 - 30, size.y - 100)
      ..paint = (Paint()..color = Colors.cyanAccent); // مربع مؤقت كشخصية

    add(player);
  }

  @override
  void onTapDown(TapDownEvent event) {
    // تحريك الشخصية يميناً ويساراً عند الضغط على الشاشة
    if (event.canvasPosition.x < size.x / 2) {
      if (player.position.x > 0) player.position.x -= 30; // تحرك لليسار
    } else {
      if (player.position.x < size.x - player.size.x) player.position.x += 30; // تحرك لليمن
    }
  }
}

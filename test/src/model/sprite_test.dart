import 'package:flutter_test/flutter_test.dart';
import 'package:mydex/src/model/pokemon/sprite.dart';

void main() {
  tests();
}

void tests() {
  test('Sprite', () {
    expect(const Sprite() == const Sprite(), isTrue);
    expect(const Sprite(front_default: 'a') == const Sprite(front_default: 'b'), isFalse);
    expect(Sprite.fromJson(const Sprite().toJson()) == const Sprite(), isTrue);
    expect(Sprite.fromJson(const Sprite(front_default: 'a').toJson()) == const Sprite(front_default: 'b'), isFalse);
  });
}

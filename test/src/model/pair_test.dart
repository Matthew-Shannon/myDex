import 'package:flutter_test/flutter_test.dart';
import 'package:mydex/src/model/pokemon/pair.dart';

void main() {
  tests();
}

void tests() {
  test('Pair', () {
    expect(const Pair() == const Pair(), isTrue);
    expect(const Pair(id: 1) == const Pair(id: 2), isFalse);
    expect(Pair.fromJson(const Pair().toJson()) == const Pair(), isTrue);
    expect(Pair.fromJson(const Pair(id: 1).toJson()) == const Pair(id: 2), isFalse);
    expect(PairRepo.withID({'name': 'a', 'url': '1'}) == 1, isTrue);
  });
}

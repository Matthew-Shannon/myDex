import 'package:flutter_test/flutter_test.dart';
import 'package:mydex/src/model/pokemon/pokemon.dart';

void main() {
  tests();
}

void tests() {
  test('Pokemon', () {
    expect(const Pokemon() == const Pokemon(), isTrue);
    expect(const Pokemon(id: 1) == const Pokemon(id: 2), isFalse);
    expect(Pokemon.fromJson(const Pokemon().toJson()) == const Pokemon(), isTrue);
    expect(Pokemon.fromJson(const Pokemon(id: 1).toJson()) == const Pokemon(id: 2), isFalse);
  });
}

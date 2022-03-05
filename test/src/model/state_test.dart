import 'package:flutter_test/flutter_test.dart';
import 'package:mydex/src/model/state.dart';

void main() {
  tests();
}

void tests() {
  group('State', () {
    test('initial', () {
      expect(const MyDexState().toString().isNotEmpty, isTrue);
    });
  });
}

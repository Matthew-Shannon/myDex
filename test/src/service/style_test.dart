import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mydex/src/service/style.dart';

@GenerateMocks([IStyle])
void main() {
  tests();
}

void tests() {
  late IStyle style;

  group('Style', () {
    setUp(() {
      style = Style();
    });

    test('darkTheme', () {
      expect(style.darkTheme().brightness, Brightness.dark);
    });

    test('lightTheme', () {
      expect(style.lightTheme().brightness, Brightness.light);
    });
  });
}

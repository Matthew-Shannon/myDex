import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mydex/src/service/prefs.dart';
import 'package:shared_preferences/shared_preferences.dart';

@GenerateMocks([IPrefs])
void main() {
  tests();
}

void tests() {
  late SharedPreferences shared;
  late Prefs prefs;

  group('Prefs', () {
    setUp(() async {
      SharedPreferences.setMockInitialValues({});
      shared = await SharedPreferences.getInstance();
      prefs = Prefs(shared);
    });

    test('id', () async {
      await Future.value()
          .whenComplete(() => expectLater(prefs.clear().then((_) => prefs.getId()), completion(isZero)))
          .whenComplete(() => expectLater(prefs.setId(1).then((_) => prefs.getId()), completion(isNonZero)))
          .whenComplete(() => expectLater(prefs.clear().then((_) => prefs.getId()), completion(isZero)));
    });

    test('pos', () async {
      await Future.value()
          .whenComplete(() => expectLater(prefs.clear().then((_) => prefs.getPos()), completion(isZero)))
          .whenComplete(() => expectLater(prefs.setPos(1).then((_) => prefs.getPos()), completion(isNonZero)))
          .whenComplete(() => expectLater(prefs.clear().then((_) => prefs.getPos()), completion(isZero)));
    });

    test('auth', () async {
      await Future.value()
          .whenComplete(() => expectLater(prefs.clear().then((_) => prefs.getAuth()), completion(isFalse)))
          .whenComplete(() => expectLater(prefs.setAuth(true).then((_) => prefs.getAuth()), completion(isTrue)))
          .whenComplete(() => expectLater(prefs.clear().then((_) => prefs.getAuth()), completion(isFalse)));
    });

    test('theme', () async {
      await Future.value()
          .whenComplete(() => expectLater(prefs.clear().then((_) => prefs.getTheme()), completion(isFalse)))
          .whenComplete(() => expectLater(prefs.setTheme(true).then((_) => prefs.getTheme()), completion(isTrue)))
          .whenComplete(() => expectLater(prefs.clear().then((_) => prefs.getTheme()), completion(isFalse)));
    });
  });
}

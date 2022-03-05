import 'package:shared_preferences/shared_preferences.dart';

import '../core/extensions.dart';

abstract class IPrefs {
  Future<void> clear();

  Future<void> setId(int value);
  Future<int> getId();

  Future<void> setPos(int value);
  Future<int> getPos();

  Future<void> setAuth(bool value);
  Future<bool> getAuth();

  Future<void> setTheme(bool value);
  Future<bool> getTheme();
}

class Prefs implements IPrefs {
  final SharedPreferences shared;

  Prefs(this.shared);

  @override
  Future<void> clear() => shared.clear();

  // ID
  @override
  Future<void> setId(int value) => Future.value(value) //
      .then((_) => shared.setInt('id', _))
      .then(logData('Prefs.setId: value: $value'));

  @override
  Future<int> getId() => Future.value(0) //
      .then((_) => shared.getInt('id') ?? _)
      .then(logData('Prefs.getId: '));

  // POS
  @override
  Future<void> setPos(int value) => Future.value(value) //
      .then((_) => shared.setInt('pos', _))
      .then(logData('Prefs: setPos: value: $value'));

  @override
  Future<int> getPos() => Future.value(0) //
      .then((_) => shared.getInt('pos') ?? _)
      .then(logData('Prefs.getPos: '));

  // AUTH
  @override
  Future<void> setAuth(bool value) => Future.value(value) //
      .then((_) => shared.setBool('auth', _))
      .then(logData('Prefs.setAuth: value: $value'));

  @override
  Future<bool> getAuth() => Future.value(false) //
      .then((_) => shared.getBool('auth') ?? _)
      .then(logData('Prefs.getAuth: '));

  // THEME
  @override
  Future<void> setTheme(bool value) => Future.value(value) //
      .then((_) => shared.setBool('theme', _))
      .then(logData('Prefs.setTheme: value: $value'));

  @override
  Future<bool> getTheme() => Future.value(false) //
      .then((_) => shared.getBool('theme') ?? _)
      .then(logData('Prefs.getTheme: '));
}

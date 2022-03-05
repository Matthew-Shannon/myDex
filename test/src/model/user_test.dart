import 'package:flutter_test/flutter_test.dart';
import 'package:mydex/src/model/user.dart';

void main() {
  tests();
}

void tests() {
  test('User', () {
    expect(const User() == const User(), isTrue);
    expect(const User(id: 1) == const User(id: 2), isFalse);
    expect(User.fromJson(const User().toJson()) == const User(), isTrue);
    expect(User.fromJson(const User(id: 1).toJson()) == const User(id: 2), isFalse);
  });
}

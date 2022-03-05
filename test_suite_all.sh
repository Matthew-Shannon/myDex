rm -f coverage/lcov.info;
flutter test --no-pub --coverage --test-randomize-ordering-seed random;
lcov --remove coverage/lcov.info 'lib/*/main.dart' 'lib/*/di.dart' 'lib/*/*.g.dart' 'lib/*/*freeze.dart' 'lib/*/*.part.dart' 'lib/generated/*.dart' 'lib/generated/*/*.dart' -o coverage/lcov.info
genhtml -o coverage coverage/lcov.info;
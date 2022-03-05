import 'package:flutter_test/flutter_test.dart';

// models
import 'src/model/pair_test.dart' as pair_test;
import 'src/model/pokemon_test.dart' as pokemon_test;
import 'src/model/sprite_test.dart' as sprite_test;
import 'src/model/state_test.dart' as state_test;
import 'src/model/user_test.dart' as user_test;
// services
import 'src/service/nav_test.dart' as nav_test;
import 'src/service/prefs_test.dart' as prefs_test;
import 'src/service/repo_test.dart' as repo_test;
import 'src/service/style_test.dart' as style_test;
import 'src/view/auth/auth_test.dart' as auth_test;

// view
import 'src/app_test.dart' as app_test;
import 'src/view/auth/features/login_test.dart' as login_test;
import 'src/view/auth/features/register_test.dart' as register_test;
import 'src/view/home/features/favorites_test.dart' as favorites_test;
import 'src/view/home/features/news_test.dart' as news_test;
import 'src/view/home/features/search_test.dart' as search_test;
import 'src/view/home/features/settings_test.dart' as settings_test;
import 'src/view/home/home_test.dart' as home_test;

void main() {
  group('Model', () {
    user_test.main();
    pokemon_test.main();
    pair_test.main();
    sprite_test.main();
  });

  group('Service', () {
    prefs_test.main();
    nav_test.main();
    style_test.main();
    state_test.main();
    repo_test.main();
  });

  group('Middleware', () {
    auth_test.middlewareTests();
    login_test.middlewareTests();
    register_test.middlewareTest();
    home_test.middlewareTests();
    news_test.middlewareTests();
    search_test.middlewareTests();
    favorites_test.middlewareTests();
    settings_test.middlewareTests();
  });

  group('View', () {
    app_test.viewTests();
    auth_test.middlewareTests();
    login_test.viewTests();
    register_test.viewTests();
    home_test.viewTests();
    news_test.viewTests();
    search_test.viewTests();
    favorites_test.viewTests();
    settings_test.viewTests();
  });
}

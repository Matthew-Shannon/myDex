import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mydex/src/core/const.dart';
import 'package:mydex/src/core/di.dart';
import 'package:mydex/src/core/view.dart';
import 'package:mydex/src/model/state.dart';
import 'package:mydex/src/service/nav.dart';
import 'package:mydex/src/view/home/home.dart';
import 'package:redux/redux.dart';

import '../../core/util.dart';
import '../../service/nav_test.mocks.dart';
import '../../service/prefs_test.mocks.dart';

void main() {
  middlewareTests();
  viewTests();
}

void middlewareTests() {
  late HomeMiddleware middleware;
  late MockIPrefs prefs;

  group('HomeMiddleware', () {
    setUp(() {
      prefs = MockIPrefs();
      middleware = HomeMiddleware(prefs);
    });

    test('onPosChange', () async {
      var store = setupStore((_, c) => _.copyWith(homeState: HomeReducer.reduce(_.homeState, c)));
      when(prefs.setPos(any)).thenAnswerVoidFuture();
      await middleware.changePos(1)(store);
      verify(prefs.setPos(any)).called(1);
      expect(store.state.homeState.pos, 1);
    });
  });
}

void viewTests() {
  late MockINav nav;
  late MockIPrefs prefs;
  late Store<MyDexState> store;
  late HomeMiddleware middleware;

  group('HomeView', () {
    setUp(() {
      nav = MockINav();
      prefs = MockIPrefs();
      middleware = HomeMiddleware(prefs);
      store = setupStore((_, c) => _.copyWith(homeState: HomeReducer.reduce(_.homeState, c)));
      DI.instance
        ..registerLazySingleton<HomeMiddleware>(() => middleware)
        ..registerLazySingleton<INav>(() => nav);
    });

    tearDown(() async => DI.instance.reset());

    testWidgets('bottomBar', (tester) async {
      var temp = Scaffold(bottomNavigationBar: HomeView.bottomNav(HomeView.bottomItems(), middleware, 0));

      await tester.pumpWidget(TestApp(() => temp).storeProvider(store));
      expect(find.text(Const.newsTitle), findsOneWidget);
      expect(find.text(Const.searchTitle), findsOneWidget);
      expect(find.text(Const.favoritesTitle), findsOneWidget);
      expect(find.text(Const.settingsTitle), findsOneWidget);
    });

    testWidgets('build', (tester) async {
      when(nav.getBy(any)).thenReturn(const Text(''));
      await tester.pumpWidget(const TestApp(HomeView.new).storeProvider(store));
      expect(find.text(Const.newsTitle), findsOneWidget);
      expect(find.text(Const.searchTitle), findsOneWidget);
      expect(find.text(Const.favoritesTitle), findsOneWidget);
      expect(find.text(Const.settingsTitle), findsOneWidget);
    });
  });
}

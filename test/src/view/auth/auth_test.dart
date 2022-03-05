import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mydex/src/core/di.dart';
import 'package:mydex/src/core/view.dart';
import 'package:mydex/src/model/state.dart';
import 'package:mydex/src/service/nav.dart';
import 'package:mydex/src/view/auth/auth.dart';
import 'package:redux/redux.dart';

import '../../core/util.dart';
import '../../service/nav_test.mocks.dart';

void main() {
  middlewareTests();
  viewTests();
}

void middlewareTests() {
  group('AuthMiddleware', () {
    //setUp(() {});
  });
}

void viewTests() {
  late MockINav nav;
  late Store<MyDexState> store;
  late AuthMiddleware middleware;

  group('AuthView', () {
    setUp(() {
      nav = MockINav();
      middleware = AuthMiddleware();
      store = setupStore((_, c) => _.copyWith(authState: AuthReducer.reduce(_.authState, c)));
      DI.instance
        ..registerLazySingleton<AuthMiddleware>(() => middleware)
        ..registerLazySingleton<INav>(() => nav);
    });

    tearDown(() async => DI.instance.reset());

    testWidgets('build', (tester) async {
      when(nav.getBy(any)).thenAnswer((_) => const Text('Foo'));
      await tester.pumpWidget(const TestApp(AuthView.new).storeProvider(store));
      expect(find.text('Foo'), findsOneWidget);
    });
  });
}

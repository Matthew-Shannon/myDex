import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mydex/src/core/const.dart';
import 'package:mydex/src/core/di.dart';
import 'package:mydex/src/core/view.dart';
import 'package:mydex/src/model/state.dart';
import 'package:mydex/src/model/user.dart';
import 'package:mydex/src/view/auth/auth.dart';
import 'package:mydex/src/view/home/features/settings.dart';
import 'package:redux/redux.dart';

import '../../../core/util.dart';
import '../../../service/prefs_test.mocks.dart';

void main() {
  middlewareTests();
  viewTests();
}

void middlewareTests() {
  late SettingsMiddleware middleware;
  late Store<MyDexState> store;
  late MockIPrefs prefs;

  group('SettingsMiddleware', () {
    setUp(() {
      prefs = MockIPrefs();
      middleware = SettingsMiddleware(prefs);
      store = setupStore((_, c) => _.copyWith(
            authState: AuthReducer.reduce(_.authState, c),
            settingsState: SettingsReducer.reduce(_.settingsState, c),
          ));
    });

    test('toggleTheme', () async {
      when(prefs.setTheme(any)).thenAnswerVoidFuture();
      expect(store.state.settingsState.isDarkMode, false);

      await middleware.toggleTheme(true)(store);
      expect(store.state.settingsState.isDarkMode, true);

      await middleware.toggleTheme(false)(store);
      expect(store.state.settingsState.isDarkMode, false);
    });

    test('logout', () async {
      when(prefs.setAuth(any)).thenAnswerVoidFuture();
      expect(store.state.authState.isAuthed, false);

      store.dispatch(const AuthAction.authChanged(true));
      expect(store.state.authState.isAuthed, true);

      await middleware.logout()(store);
      expect(store.state.authState.isAuthed, false);
      verify(prefs.setAuth(any)).called(1);
    });
  });
}

void viewTests() {
  late SettingsMiddleware middleware;
  late Store<MyDexState> store;

  group('SettingsView', () {
    setUp(() {
      var prefs = MockIPrefs();
      middleware = SettingsMiddleware(prefs);
      store = setupStore((_, c) => _.copyWith(
            authState: AuthReducer.reduce(_.authState, c),
            settingsState: SettingsReducer.reduce(_.settingsState, c),
          ));
      DI.instance
        ..registerLazySingleton<Store<MyDexState>>(() => store)
        ..registerLazySingleton<SettingsMiddleware>(() => middleware);
    });

    tearDown(() async => DI.instance.reset());

    testWidgets('buttons', (tester) async {
      var vm = SettingsVM.fromStore(store, middleware);
      await tester.pumpWidget(TestApp(() => SettingsView.buttons(vm).column()));
      expect(find.text(Const.logoutBtn), findsOneWidget);
      // TODO?
    });

    testWidgets('toggles', (tester) async {
      var vm = SettingsVM.fromStore(store, middleware);
      await tester.pumpWidget(TestApp(() => SettingsView.toggles(vm).column()));
      expect(find.text(Const.darkModeBtn), findsOneWidget);
      // TODO?
    });

    testWidgets('userView', (tester) async {
      var vm = const UserVM(User(id: 1, name: 'a', email: 'b@', password: 'c'));
      await tester.pumpWidget(TestApp(() => SettingsView.userView(vm).column()));
      expect(find.text('Name: a'), findsOneWidget);
      expect(find.text('Email: b@'), findsOneWidget);
      expect(find.text('Password: c'), findsOneWidget);
    });

    testWidgets('build', (tester) async {
      await tester.pumpWidget(const TestApp(SettingsView.new).storeProvider(store));
      store.dispatch(const AuthAction.ownerChanged(User(id: 1, name: 'a', email: 'b@', password: 'c')));
      await tester.pump(Duration.zero);
      expect(find.text('Name: a'), findsOneWidget);
      expect(find.text('Email: b@'), findsOneWidget);
      expect(find.text('Password: c'), findsOneWidget);
      expect(find.text(Const.logoutBtn), findsOneWidget);
      expect(find.text(Const.darkModeBtn), findsOneWidget);
    });
  });
}

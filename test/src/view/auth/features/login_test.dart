import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mydex/src/core/const.dart';
import 'package:mydex/src/core/di.dart';
import 'package:mydex/src/core/view.dart';
import 'package:mydex/src/model/state.dart';
import 'package:mydex/src/model/user.dart';
import 'package:mydex/src/service/nav.dart';
import 'package:mydex/src/view/auth/features/login.dart';
import 'package:redux/redux.dart';

import '../../../core/util.dart';
import '../../../service/nav_test.mocks.dart';
import '../../../service/prefs_test.mocks.dart';
import '../../../service/repo_test.mocks.dart';

void main() {
  middlewareTests();
  viewTests();
}

void middlewareTests() {
  late LoginMiddleware middleware;
  late MockIUserRepo userRepo;
  late Store<MyDexState> store;
  late MockIPrefs prefs;

  group('LoginMiddleware', () {
    setUp(() {
      prefs = MockIPrefs();
      userRepo = MockIUserRepo();
      middleware = LoginMiddleware(prefs, userRepo);
      store = setupStore(
        (_, c) => _.copyWith(
            authState: _.authState.copyWith(
          loginState: LoginReducer.reduce(_.authState.loginState, c),
        )),
      );
    });

    test('validateEmail', () {
      expect(middleware.validateEmail('', ''), Const.emailBlankTxt);
      expect(middleware.validateEmail('a', ''), Const.emailInvalidTxt);
      expect(middleware.validateEmail('a@', ''), Const.emailNotFound);
      expect(middleware.validateEmail('a@', 'a@'), null);
    });

    test('validatePassword', () {
      expect(middleware.validatePassword('', ''), Const.passwordBlankTxt);
      expect(middleware.validatePassword('a', 'b'), Const.passwordIncorrect);
      expect(middleware.validatePassword('a', 'a'), null);
    });

    test('onSubmitFailPath', () async {
      when(prefs.setAuth(any)).thenAnswerVoidFuture();
      when(prefs.setId(any)).thenAnswerVoidFuture();

      when(userRepo.doGetByEmail(any)).thenAnswerFuture(const User(id: 1, name: 'a', email: 'b@', password: 'c'));
      await middleware.onLoginSubmit()(store);
      verifyNever(prefs.setAuth(any));
      verifyNever(prefs.setId(any));
    });
    test('onSubmitHappyPath', () async {
      when(prefs.setAuth(any)).thenAnswerVoidFuture();
      when(prefs.setId(any)).thenAnswerVoidFuture();

      when(userRepo.doGetByEmail(any)).thenAnswerFuture(const User(id: 1, name: 'a', email: 'b@', password: 'c'));
      store.dispatch(const LoginAction.emailTextChanged('b@'));
      store.dispatch(const LoginAction.emailErrorChanged(null));
      store.dispatch(const LoginAction.passwordTextChanged('c'));
      store.dispatch(const LoginAction.passwordErrorChanged(null));
      await middleware.onLoginSubmit()(store);
      verify(prefs.setAuth(any)).called(1);
      verify(prefs.setId(any)).called(1);
    });
  });
}

void viewTests() {
  late Store<MyDexState> store;
  late LoginMiddleware middleware;
  late MockINav nav;
  late LoginVM vm;

  group('LoginView', () {
    setUp(() {
      var prefs = MockIPrefs();
      var userRepo = MockIUserRepo();
      middleware = LoginMiddleware(prefs, userRepo);
      store = setupStore(
        (_, c) => _.copyWith(
            authState: _.authState.copyWith(
          loginState: LoginReducer.reduce(_.authState.loginState, c),
        )),
      );
      vm = LoginVM.fromStore(store, middleware);
      nav = MockINav();

      DI.instance
        ..registerLazySingleton<LoginMiddleware>(() => middleware)
        ..registerLazySingleton<INav>(() => nav);
    });

    tearDown(() async => DI.instance.reset());

    testWidgets('registerBtn', (tester) async {
      var registerClicked = false;
      await tester.pumpWidget(TestApp(() => LoginView.buttonsView(vm, () => registerClicked = true)));
      expect(find.text(Const.registerBtn), findsOneWidget);
      await tester.tap(find.text(Const.registerBtn));
      await tester.pump();
      expect(registerClicked, isTrue);
    });

    testWidgets('submitBtn', (tester) async {
      await tester.pumpWidget(TestApp(() => LoginView.buttonsView(vm, () {})));
      expect(find.text(Const.submitBtn), findsOneWidget);
      await tester.tap(find.text(Const.submitBtn));
      await tester.pump();
    });

    testWidgets('fields', (tester) async {
      await tester.pumpWidget(TestApp(() => LoginView.fieldsView(vm)));
      expect(find.text(Const.emailLabel), findsOneWidget);
      expect(find.text(Const.passwordLabel), findsOneWidget);
    });

    testWidgets('build', (tester) async {
      when(nav.goTo(any, any)).thenReturn(() {});
      await tester.pumpWidget(const TestApp(LoginView.new).storeProvider(store));
      expect(find.text(Const.registerBtn), findsOneWidget);
      expect(find.text(Const.submitBtn), findsOneWidget);
      expect(find.text(Const.loginTitle), findsOneWidget);
      expect(find.text(Const.emailLabel), findsOneWidget);
      expect(find.text(Const.passwordLabel), findsOneWidget);
      await tester.enterText(find.byType(TextField).at(0), 'b@');
      await tester.enterText(find.byType(TextField).at(1), 'ac');
    });
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mydex/src/core/const.dart';
import 'package:mydex/src/core/di.dart';
import 'package:mydex/src/core/view.dart';
import 'package:mydex/src/model/state.dart';
import 'package:mydex/src/model/user.dart';
import 'package:mydex/src/service/nav.dart';
import 'package:mydex/src/view/auth/features/register.dart';
import 'package:redux/redux.dart';

import '../../../core/util.dart';
import '../../../service/nav_test.mocks.dart';
import '../../../service/repo_test.mocks.dart';

void main() {
  middlewareTest();
  viewTests();
}

void middlewareTest() {
  late RegisterMiddleware middleware;
  late Store<MyDexState> store;
  late MockIUserRepo userRepo;

  setUp(() {
    userRepo = MockIUserRepo();
    middleware = RegisterMiddleware(userRepo);
    store = setupStore(
      (_, c) => _.copyWith(
          authState: _.authState.copyWith(
        registerState: RegisterReducer.reduce(_.authState.registerState, c),
      )),
    );
  });

  group('RegisterMiddleware', () {
    test('validateName', () {
      expect(middleware.validateName(''), Const.nameIsBlankTxt);
      expect(middleware.validateName('a'), null);
    });
    test('validateEmail', () {
      expect(middleware.validateEmail('', ''), Const.emailBlankTxt);
      expect(middleware.validateEmail('a', ''), Const.emailInvalidTxt);
      expect(middleware.validateEmail('a@', 'a@'), Const.emailAlreadyExistTxt);
      expect(middleware.validateEmail('a@', ''), null);
    });

    test('validatePassword', () {
      expect(middleware.validatePassword(''), Const.passwordBlankTxt);
      expect(middleware.validatePassword('a'), null);
    });

    test('onSubmitFailPath', () async {
      when(userRepo.doInsert(any, any, any)).thenAnswerVoidFuture();
      when(userRepo.doGetByEmail(any)).thenAnswerFuture(const User(id: 1, name: 'a', email: 'b@', password: 'c'));
      await middleware.onRegisterSubmit(() {})(store);
      verifyNever(userRepo.doInsert(any, any, any));
    });

    test('onSubmitHappyPath', () async {
      when(userRepo.doInsert(any, any, any)).thenAnswerVoidFuture();
      when(userRepo.doGetByEmail(any)).thenAnswerFuture(const User(id: 1, name: 'a', email: 'b@', password: 'c'));
      store.dispatch(const RegisterAction.nameTextChanged('a'));
      store.dispatch(const RegisterAction.nameErrorChanged(null));
      store.dispatch(const RegisterAction.emailTextChanged('c@'));
      store.dispatch(const RegisterAction.emailErrorChanged(null));
      store.dispatch(const RegisterAction.passwordTextChanged('c'));
      store.dispatch(const RegisterAction.passwordErrorChanged(null));
      var wasCalled = false;
      when(userRepo.doGetByEmail(any)).thenAnswerFuture(const User());
      await middleware.onRegisterSubmit(() => wasCalled = true)(store);
      verify(userRepo.doInsert(any, any, any)).called(1);
      expect(wasCalled, isTrue);
    });
  });
}

void viewTests() {
  late RegisterMiddleware middleware;
  late Store<MyDexState> store;
  late MockINav nav;

  group('RegisterView', () {
    setUp(() {
      middleware = RegisterMiddleware(MockIUserRepo());
      store = setupStore(
        (_, c) => _.copyWith(
            authState: _.authState.copyWith(
          registerState: RegisterReducer.reduce(_.authState.registerState, c),
        )),
      );
      nav = MockINav();

      DI.instance
        ..registerLazySingleton<RegisterMiddleware>(() => middleware)
        ..registerLazySingleton<INav>(() => nav);
    });

    tearDown(() async => DI.instance.reset());

    testWidgets('loginBtn', (tester) async {
      when(nav.goBack(any)).thenReturn(() {});
      var onBackClick = false;
      var vm = RegisterVM.fromStore(store, middleware);
      await tester.pumpWidget(TestApp(() => RegisterView.buttonsView(vm, () => onBackClick = true)));
      expect(find.text(Const.loginBtn), findsOneWidget);
      await tester.tap(find.text(Const.loginBtn));
      await tester.pump();
      expect(onBackClick, isTrue);
    });

    testWidgets('submitBtn', (tester) async {
      var vm = RegisterVM.fromStore(store, middleware);
      await tester.pumpWidget(TestApp(() => RegisterView.buttonsView(vm, () {})));
      expect(find.text(Const.submitBtn), findsOneWidget);
      await tester.tap(find.text(Const.submitBtn));
      await tester.pump();
    });

    testWidgets('fields', (tester) async {
      var vm = RegisterVM.fromStore(store, middleware);
      await tester.pumpWidget(TestApp(() => RegisterView.fieldsView(vm)));
      expect(find.text(Const.nameLabel), findsOneWidget);
      expect(find.text(Const.emailLabel), findsOneWidget);
      expect(find.text(Const.passwordLabel), findsOneWidget);
    });

    testWidgets('build', (tester) async {
      when(nav.goBack(any)).thenReturn(() {});
      await tester.pumpWidget(const TestApp(RegisterView.new).storeProvider(store));
      expect(find.text(Const.loginBtn), findsOneWidget);
      expect(find.text(Const.submitBtn), findsOneWidget);
      expect(find.text(Const.registerTitle), findsOneWidget);
      expect(find.text(Const.nameLabel), findsOneWidget);
      expect(find.text(Const.emailLabel), findsOneWidget);
      expect(find.text(Const.passwordLabel), findsOneWidget);

      await tester.enterText(find.byType(TextField).at(0), 'a');
      await tester.enterText(find.byType(TextField).at(1), 'b@');
      await tester.enterText(find.byType(TextField).at(2), 'ac');
    });
  });
}

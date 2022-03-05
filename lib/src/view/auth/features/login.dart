import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it_mixin/get_it_mixin.dart';
import 'package:redux/redux.dart';

import '../../../core/const.dart';
import '../../../core/extensions.dart';
import '../../../core/types.dart';
import '../../../core/view.dart';
import '../../../model/state.dart';
import '../../../model/user.dart';
import '../../../service/nav.dart';
import '../../../service/prefs.dart';
import '../auth.dart';

part 'login.freezed.dart';

class LoginView extends StatelessWidget with GetItMixin {
  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginMiddleware middleware = get();
    final INav nav = get();
    return StoreConnector<MyDexState, LoginVM>(
      converter: (store) => LoginVM.fromStore(store, middleware),
      builder: (ctx, _) => Scaffold(
        appBar: const Text(Const.loginTitle).appBar(),
        body: View.frame([
          View.singleCard([
            LoginView.fieldsView(_),
            LoginView.buttonsView(_, nav.goTo(context, Const.registerView)),
          ])
        ]),
      ),
    );
  }

  static Widget fieldsView(LoginVM vm) => [
        const Text(Const.emailLabel) //
            .inputDecor(vm.state.inputErrors[Const.emailLabel])
            .textField(vm.onEmailChanged)
            .padding(24.h.onlyBottom()),
        const Text(Const.passwordLabel) //
            .inputDecor(vm.state.inputErrors[Const.passwordLabel])
            .textField(vm.onPasswordChanged)
            .padding(12.h.onlyBottom()),
      ].column();

  static Widget buttonsView(LoginVM vm, Runnable onRegisterClick) => [
        const Text(Const.registerBtn).textButton(onRegisterClick),
        const Text(Const.submitBtn).elevatedButton(vm.onLoginSubmit),
      ].reversedRow();
}

class LoginMiddleware {
  final IUserRepo userRepo;
  final IPrefs prefs;

  LoginMiddleware(this.prefs, this.userRepo);

  String? validateEmail(String email, String cached) {
    if (email.isEmpty) return Const.emailBlankTxt;
    if (!email.contains('@')) return Const.emailInvalidTxt;
    if (cached != email) return Const.emailNotFound;
    return null;
  }

  String? validatePassword(String password, String cached) {
    if (password.isEmpty) return Const.passwordBlankTxt;
    if (cached != password) return Const.passwordIncorrect;
    return null;
  }

  Func<Store<MyDexState>, Future<void>> onLoginSubmit() => (store) async {
        LoginState state = store.state.authState.loginState;
        var cached = await userRepo.doGetByEmail(state.emailText);

        var emailError = validateEmail(state.emailText, cached.email);
        store.dispatch(LoginAction.emailErrorChanged(emailError));

        var passwordError = validatePassword(state.passwordText, cached.password);
        store.dispatch(LoginAction.passwordErrorChanged(passwordError));

        if (emailError != null || passwordError != null) return;

        await prefs.setAuth(true);
        await prefs.setId(cached.id);
        store.dispatch(AuthAction.ownerChanged(cached));
        store.dispatch(const AuthAction.authChanged(true));
      };
}

class LoginVM {
  final LoginState state;
  final Consumer<String> onEmailChanged;
  final Consumer<String> onPasswordChanged;
  final Runnable onLoginSubmit;

  LoginVM({required this.state, required this.onEmailChanged, required this.onPasswordChanged, required this.onLoginSubmit});

  factory LoginVM.fromStore(Store<MyDexState> store, LoginMiddleware middleware) => LoginVM(
        state: store.state.authState.loginState,
        onEmailChanged: (_) => store.dispatch(LoginAction.emailTextChanged(_)),
        onPasswordChanged: (_) => store.dispatch(LoginAction.passwordTextChanged(_)),
        onLoginSubmit: () => store.dispatch(middleware.onLoginSubmit()),
      );
}

class LoginReducer {
  static LoginState reduce(LoginState prev, action) => action is LoginAction
      ? action.when(
          emailTextChanged: (_) => prev.copyWith(emailText: _),
          emailErrorChanged: (_) => prev.copyWith(inputErrors: prev.inputErrors.copyWith(Const.emailLabel, _)),
          passwordTextChanged: (_) => prev.copyWith(passwordText: _),
          passwordErrorChanged: (_) => prev.copyWith(inputErrors: prev.inputErrors.copyWith(Const.passwordLabel, _)),
        )
      : prev;
}

@freezed
class LoginAction with _$LoginAction {
  const factory LoginAction.emailTextChanged(String email) = EmailTextChanged;
  const factory LoginAction.emailErrorChanged(String? emailError) = EmailErrorChanged;
  const factory LoginAction.passwordTextChanged(String password) = PasswordTextChanged;
  const factory LoginAction.passwordErrorChanged(String? passwordError) = PasswordErrorChanged;
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState([
    @Default('') String emailText,
    @Default('') String passwordText,
    @Default({}) Map<String, String?> inputErrors,
  ]) = _LoginState;
}

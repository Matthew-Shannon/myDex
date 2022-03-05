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

part 'register.freezed.dart';

class RegisterView extends StatelessWidget with GetItMixin {
  RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RegisterMiddleware middleware = get();
    final INav nav = get();
    return StoreConnector<MyDexState, RegisterVM>(
      converter: (store) => RegisterVM.fromStore(store, middleware),
      builder: (ctx, _) => Scaffold(
        appBar: const Text(Const.registerTitle).appBar(),
        body: View.frame([
          View.singleCard([
            RegisterView.fieldsView(_),
            RegisterView.buttonsView(_, nav.goBack(context)),
          ])
        ]),
      ),
    );
  }

  static Widget fieldsView(RegisterVM vm) => Column(children: [
        const Text(Const.nameLabel) //
            .inputDecor(vm.state.inputErrors[Const.nameLabel])
            .textField(vm.onNameChanged)
            .padding(24.h.onlyBottom()),
        const Text(Const.emailLabel) //
            .inputDecor(vm.state.inputErrors[Const.emailLabel])
            .textField(vm.onEmailChanged)
            .padding(24.h.onlyBottom()),
        const Text(Const.passwordLabel) //
            .inputDecor(vm.state.inputErrors[Const.passwordLabel])
            .textField(vm.onPasswordChanged)
            .padding(12.h.onlyBottom()),
      ]);

  static Widget buttonsView(RegisterVM vm, Runnable onBackClick) => [
        const Text(Const.loginBtn).textButton(onBackClick),
        const Text(Const.submitBtn).elevatedButton(vm.onSubmit(onBackClick)),
      ].reversedRow();
}

class RegisterMiddleware {
  final IUserRepo userRepo;

  RegisterMiddleware(this.userRepo);

  String? validateName(String name) {
    if (name.isEmpty) return Const.nameIsBlankTxt;
    return null;
  }

  String? validatePassword(String password) {
    if (password.isEmpty) return Const.passwordBlankTxt;
    return null;
  }

  String? validateEmail(String email, String cached) {
    if (email.isEmpty) return Const.emailBlankTxt;
    if (!email.contains('@')) return Const.emailInvalidTxt;
    if (cached.isNotEmpty) return Const.emailAlreadyExistTxt;
    return null;
  }

  Func<Store<MyDexState>, Future<void>> onRegisterSubmit(Runnable onComplete) => (store) async {
        RegisterState state = store.state.authState.registerState;
        var cached = await userRepo.doGetByEmail(state.emailText);

        var nameError = validateName(state.nameText);
        store.dispatch(RegisterAction.nameErrorChanged(nameError));

        var emailError = validateEmail(state.emailText, cached.email);
        store.dispatch(RegisterAction.emailErrorChanged(emailError));

        var passwordError = validatePassword(state.passwordText);
        store.dispatch(RegisterAction.passwordErrorChanged(passwordError));

        if (nameError != null || emailError != null || passwordError != null) return;
        await userRepo.doInsert(state.nameText, state.emailText, state.passwordText);
        onComplete();
      };
}

class RegisterVM {
  final RegisterState state;
  final Consumer<String> onNameChanged;
  final Consumer<String> onEmailChanged;
  final Consumer<String> onPasswordChanged;
  final Func<Runnable, Runnable> onSubmit;
  RegisterVM({
    required this.state,
    required this.onNameChanged,
    required this.onEmailChanged,
    required this.onPasswordChanged,
    required this.onSubmit,
  });

  factory RegisterVM.fromStore(Store<MyDexState> store, RegisterMiddleware middleware) => RegisterVM(
        state: store.state.authState.registerState,
        onNameChanged: (_) => store.dispatch(RegisterAction.nameTextChanged(_)),
        onEmailChanged: (_) => store.dispatch(RegisterAction.emailTextChanged(_)),
        onPasswordChanged: (_) => store.dispatch(RegisterAction.passwordTextChanged(_)),
        onSubmit: (_) => () => store.dispatch(middleware.onRegisterSubmit(_)),
      );
}

class RegisterReducer {
  static RegisterState reduce(RegisterState prev, action) => action is RegisterAction
      ? action.when(
          nameTextChanged: (_) => prev.copyWith(nameText: _),
          nameErrorChanged: (_) => prev.copyWith(inputErrors: prev.inputErrors.copyWith(Const.nameLabel, _)),
          emailTextChanged: (_) => prev.copyWith(emailText: _),
          emailErrorChanged: (_) => prev.copyWith(inputErrors: prev.inputErrors.copyWith(Const.emailLabel, _)),
          passwordTextChanged: (_) => prev.copyWith(passwordText: _),
          passwordErrorChanged: (_) => prev.copyWith(inputErrors: prev.inputErrors.copyWith(Const.passwordLabel, _)),
        )
      : prev;
}

@freezed
class RegisterAction with _$RegisterAction {
  const factory RegisterAction.nameTextChanged(String name) = NameTextChanged;
  const factory RegisterAction.nameErrorChanged(String? nameError) = NameErrorChanged;
  const factory RegisterAction.emailTextChanged(String email) = EmailTextChanged;
  const factory RegisterAction.emailErrorChanged(String? emailError) = EmailErrorChanged;
  const factory RegisterAction.passwordTextChanged(String password) = PasswordTextChanged;
  const factory RegisterAction.passwordErrorChanged(String? passwordError) = PasswordErrorChanged;
}

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState([
    @Default('') String nameText,
    @Default('') String emailText,
    @Default('') String passwordText,
    @Default({}) Map<String, String?> inputErrors,
  ]) = _RegisterState;
}

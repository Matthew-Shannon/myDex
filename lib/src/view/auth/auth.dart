import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it_mixin/get_it_mixin.dart';

import '../../core/const.dart';
import '../../model/state.dart';
import '../../model/user.dart';
import '../../service/nav.dart';
import 'features/login.dart';
import 'features/register.dart';

part 'auth.freezed.dart';

class AuthView extends StatelessWidget with GetItMixin {
  AuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final AuthMiddleware middleware = get();
    final INav nav = get();
    return StoreConnector<MyDexState, AuthState>(
      converter: (_) => _.state.authState,
      builder: (ctx, _) => nav.getBy(Const.loginView),
    );
  }
}

class AuthMiddleware {}

class AuthReducer {
  static AuthState reduce(AuthState prev, dynamic action) => AuthState(
        owner: action is OwnerChanged ? action.owner : prev.owner,
        isAuthed: action is AuthChanged ? action.auth : prev.isAuthed,
        loginState: LoginReducer.reduce(prev.loginState, action),
        registerState: RegisterReducer.reduce(prev.registerState, action),
      );
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(User()) User owner,
    @Default(false) bool isAuthed,
    @Default(LoginState()) LoginState loginState,
    @Default(RegisterState()) RegisterState registerState,
  }) = _AuthState;
}

@freezed
class AuthAction with _$AuthAction {
  const factory AuthAction.authChanged(bool auth) = AuthChanged;
  const factory AuthAction.ownerChanged(User owner) = OwnerChanged;
}

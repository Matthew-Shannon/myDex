import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../view/auth/auth.dart';
import '../view/home/features/search.dart';
import '../view/home/features/settings.dart';
import '../view/home/home.dart';

part 'state.freezed.dart';

@freezed
class MyDexState with _$MyDexState {
  const factory MyDexState({
    @Default(AuthState()) AuthState authState,
    @Default(HomeState()) HomeState homeState,
    @Default(SearchState()) SearchState searchState,
    @Default(SettingsState()) SettingsState settingsState,
  }) = _MyDexState;
}

class MyDexReducer {
  static MyDexState reduce(MyDexState state, action) => MyDexState(
      authState: AuthReducer.reduce(state.authState, action),
      homeState: HomeReducer.reduce(state.homeState, action),
      searchState: SearchReducer.reduce(state.searchState, action),
      settingsState: SettingsReducer.reduce(state.settingsState, action));
}

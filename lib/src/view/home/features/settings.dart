import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it_mixin/get_it_mixin.dart';
import 'package:redux/redux.dart';

import '../../../core/const.dart';
import '../../../core/extensions.dart';
import '../../../core/types.dart';
import '../../../core/view.dart';
import '../../../model/state.dart';
import '../../../model/user.dart';
import '../../../service/prefs.dart';
import '../../auth/auth.dart';

part 'settings.freezed.dart';

class SettingsView extends StatelessWidget with GetItMixin {
  SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SettingsMiddleware middleware = get();
    return StoreConnector<MyDexState, SettingsVM>(
        converter: (_) => SettingsVM.fromStore(_, middleware),
        builder: (ctx, _) => Scaffold(
            appBar: const Text(Const.settingsTitle).appBar(),
            body: View.listView([
              ...SettingsView.userView(_.userVM),
              ...SettingsView.toggles(_),
              ...SettingsView.buttons(_),
            ])));
  }

  static List<Widget> userView(UserVM vm) => //
      vm.fields().mapList(Text.new).mapList((_) => ListTile(title: _));

  static List<Widget> toggles(SettingsVM vm) => [
        SwitchListTile(title: const Text(Const.darkModeBtn), onChanged: vm.onToggleTheme, value: vm.settingsState.isDarkMode),
      ];

  static List<Widget> buttons(SettingsVM vm) => [
        const Text(Const.logoutBtn).outlinedButton(vm.onLogout),
      ];
}

class SettingsVM {
  final SettingsState settingsState;
  final UserVM userVM;
  final Runnable onLogout;
  final Consumer<bool> onToggleTheme;

  const SettingsVM({
    required this.settingsState,
    required this.userVM,
    required this.onLogout,
    required this.onToggleTheme,
  });

  factory SettingsVM.fromStore(Store<MyDexState> store, SettingsMiddleware middleware) => SettingsVM(
        settingsState: store.state.settingsState,
        userVM: UserVM(store.state.authState.owner),
        onLogout: () => store.dispatch(middleware.logout()),
        onToggleTheme: (_) => store.dispatch(middleware.toggleTheme(_)),
      );
}

class SettingsMiddleware {
  final IPrefs prefs;
  SettingsMiddleware(this.prefs);

  Func<Store<MyDexState>, Future<void>> toggleTheme(bool status) => (store) async {
        await prefs.setTheme(status);
        store.dispatch(SettingsAction.themeChanged(status));
      };

  Func<Store<MyDexState>, Future<void>> logout() => (store) async {
        await prefs.setAuth(false);
        store.dispatch(const AuthAction.authChanged(false));
      };
}

class SettingsReducer {
  static SettingsState reduce(SettingsState prev, dynamic action) => !(action is SettingsAction)
      ? prev
      : action.when(
          themeChanged: (_) => prev.copyWith(isDarkMode: _),
        );
}

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(false) bool isDarkMode,
    @Default(false) bool isiOS,
  }) = _SettingsState;
}

@freezed
class SettingsAction with _$SettingsAction {
  const factory SettingsAction.themeChanged(bool theme) = ThemeChanged;
}

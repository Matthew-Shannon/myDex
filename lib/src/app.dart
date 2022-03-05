import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:get_it_mixin/get_it_mixin.dart';
import 'package:redux/redux.dart';

import 'core/const.dart';
import 'core/view.dart';
import 'model/state.dart';
import 'service/nav.dart';
import 'service/style.dart';

class AppView extends StatelessWidget with GetItMixin {
  AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    final IStyle style = get();
    final INav nav = get();
    return StoreConnector<MyDexState, AppVM>(
      converter: (_) => AppVM.fromStore(_, style, nav),
      builder: (ctx, _) => body(ctx, _) //
          .screenUtil()
          .devicePreview(true),
    );
  }

  static Widget body(BuildContext ctx, AppVM vm) => MaterialApp(
        locale: DevicePreview.locale(ctx),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        theme: vm.theme,
        home: vm.home,
      );
}

class AppVM {
  final Widget home;
  final ThemeData theme;

  const AppVM({
    required this.home,
    required this.theme,
  });

  factory AppVM.fromStore(Store<MyDexState> store, IStyle style, INav nav) => AppVM(
        home: store.state.authState.isAuthed //
            ? nav.getBy(Const.homeView)
            : nav.getBy(Const.authView),
        theme: store.state.settingsState.isDarkMode //
            ? style.darkTheme()
            : style.lightTheme(),
      );
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it_mixin/get_it_mixin.dart';
import 'package:redux/redux.dart';

import '../../core/const.dart';
import '../../core/types.dart';
import '../../model/state.dart';
import '../../service/nav.dart';
import '../../service/prefs.dart';
import '../../service/style.dart';

part 'home.freezed.dart';

class HomeView extends StatelessWidget with GetItMixin {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeMiddleware middleware = get();
    final INav nav = get();
    return StoreConnector<MyDexState, HomeState>(
        converter: (_) => _.state.homeState,
        builder: (ctx, _) => Scaffold(
              body: nav.getBy(bottomItems()[_.pos].viewName),
              bottomNavigationBar: bottomNav(bottomItems(), middleware, _.pos),
            ));
  }

  static Widget bottomNav(List<BottomItem> items, HomeMiddleware middleware, int i) => //
      StoreConnector<MyDexState, Consumer<int>>(
          converter: (_) => (res) => _.dispatch(middleware.changePos(res)),
          builder: (ctx, _) => BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                items: items.map(barItem).toList(),
                currentIndex: i,
                onTap: _,
              ));

  static BottomNavigationBarItem barItem(BottomItem item) => BottomNavigationBarItem(
        label: item.title,
        icon: Icon(item.normalIcon),
        activeIcon: Icon(item.selectedIcon),
      );

  static List<BottomItem> bottomItems() => const [
        BottomItem(Const.newsTitle, Const.newsView, Icons.newspaper_outlined, Icons.feed),
        BottomItem(Const.searchTitle, Const.searchView, Icons.search_outlined, Icons.search),
        BottomItem(Const.favoritesTitle, Const.favoritesView, Icons.favorite_outline, Icons.favorite),
        BottomItem(Const.settingsTitle, Const.settingsView, Icons.settings_outlined, Icons.settings),
      ];
}

class HomeMiddleware {
  final IPrefs prefs;

  HomeMiddleware(this.prefs);

  Func<Store<MyDexState>, Future<void>> changePos(int i) => (store) async {
        await prefs.setPos(i);
        store.dispatch(HomeAction.posChanged(i));
      };
}

class HomeReducer {
  static HomeState reduce(HomeState prev, dynamic action) => !(action is HomeAction)
      ? prev
      : action.when(
          posChanged: (_) => prev.copyWith(pos: _),
        );
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState([
    @Default(0) int pos,
  ]) = _HomeState;
}

@freezed
class HomeAction with _$HomeAction {
  const factory HomeAction.posChanged(int pos) = PosChanged;
}

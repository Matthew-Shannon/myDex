import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get_it_mixin/get_it_mixin.dart';

import '../../../core/const.dart';
import '../../../model/state.dart';

class FavoritesView extends StatelessWidget with GetItMixin {
  FavoritesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => StoreConnector<MyDexState, MyDexState>(
      converter: (_) => _.state,
      builder: (ctx, _) => Scaffold(
            appBar: AppBar(title: const Text(Const.favoritesTitle), centerTitle: true),
            body: const Center(child: Text(Const.appName)),
          ));
}

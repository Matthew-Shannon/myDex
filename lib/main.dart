import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

import 'src/app.dart';
import 'src/core/di.dart';
import 'src/core/view.dart';
import 'src/model/state.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  var di = await Graph.setup();
  final Store<MyDexState> store = di.get();
  runApp(AppView().storeProvider(store));
}

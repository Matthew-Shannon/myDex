import 'package:flutter/material.dart';

import '../core/types.dart';

abstract class INav {
  Runnable goTo(BuildContext context, String key);
  Runnable goBack(BuildContext context);
  Widget getBy(String key);
}

class Nav implements INav {
  final Map<String, Supplier<Widget>> factories;
  final String msg = 'View Not Found';

  Nav(this.factories);

  @override
  Runnable goBack(BuildContext context) => () => Navigator.pop(context);

  @override
  Runnable goTo(BuildContext context, String key) => () => Navigator.push(context, MaterialPageRoute(builder: (context) => getBy(key)));

  @override
  Widget getBy(String key) => factories[key] == null //
      ? Center(child: Text(msg))
      : factories[key]!();
}

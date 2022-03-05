import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:redux/redux.dart';

import 'types.dart';

class View {
  static Widget card(List<Widget> children, [double magnitude = 1]) => //
      Card(
        margin: (12 * magnitude).all(),
        elevation: 10 * magnitude,
        child: Wrap(children: children) //
            .padding((8 * magnitude).all()),
      );

  static Widget action(IconData icon, void onClick()) => //
      Icon(icon) //
          .onTap(onClick)
          .padding(12.w.onlyEnd());

  static ListView listView(List<Widget> children) => //
      ListView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        padding: 16.r.all(),
        shrinkWrap: true,
        children: children,
      );

  static Widget singleCard(List<Widget> children) => children //
      .column()
      .paddingN(l: 24.r, t: 24.r, r: 24.r, b: 12.r)
      .card()
      .container(width: 1.2.sw)
      .padding(0.04.sh.onlyTop());

  static Widget frame(List<Widget> children) => children
      .column() //
      .padding(16.r.all())
      .sizedBox(width: double.infinity)
      .singleChildScrollView()
      .safeArea();
}

extension WidgetEx on Widget {
  Widget app() => //
      MaterialApp(home: this);

  Widget center() => //
      Center(child: this);

  Widget safeArea() => //
      SafeArea(child: this);

  Widget singleChildScrollView() => //
      SingleChildScrollView(child: this);

  Widget sizedBox({double? width, double? height}) => //
      SizedBox(width: width, height: height, child: this);

  Widget container({double? width, double? height}) => //
      Container(width: width, child: this);

  Widget material() => //
      Material(child: this);

  Widget onTap(Runnable onTap) => //
      GestureDetector(onTap: onTap, child: this);

  Widget outlinedButton(Runnable onClick) => //
      OutlinedButton(onPressed: onClick, child: this);

  Widget textButton(Runnable onClick) => //
      TextButton(onPressed: onClick, child: this);

  Widget elevatedButton(Runnable onClick) => //
      ElevatedButton(onPressed: onClick, child: this);

  Widget card({z = 8.0}) => //
      Card(elevation: z, child: this);

  PreferredSizeWidget appBar() => //
      AppBar(title: this, centerTitle: true);

  InputDecoration inputDecor(String? error) => //
      InputDecoration(label: this, errorText: error, border: const OutlineInputBorder());

  Widget padding(EdgeInsetsGeometry value) => //
      Padding(padding: value, child: this);

  Widget paddingN({l = 0.0, t = 0.0, r = 0.0, b = 0.0}) => //
      padding(EdgeInsets.fromLTRB(l, t, r, b));
}

extension InputDecoratinoEx on InputDecoration {
  TextField textField(Consumer<String> onChange, {isPassword = false}) => //
      TextField(decoration: this, obscureText: isPassword, onChanged: onChange);
}

extension WidgetExT on List<Widget> {
  Widget reversedRow() => //
      Row(mainAxisAlignment: MainAxisAlignment.end, children: this);

  Widget row() => //
      Row(children: this);

  Widget column() => //
      Column(children: this);
}

extension doubleEx on double {
  EdgeInsets all() => EdgeInsets.all(this);
  EdgeInsets onlyStart() => EdgeInsets.only(left: this);
  EdgeInsets onlyTop() => EdgeInsets.only(top: this);
  EdgeInsets onlyEnd() => EdgeInsets.only(right: this);
  EdgeInsets onlyBottom() => EdgeInsets.only(bottom: this);
}

extension AppEx on Widget {
  Widget devicePreview([bool enabled = false]) => //
      DevicePreview(
        enabled: enabled,
        builder: (_) => this,
      );

  Widget screenUtil() => //
      ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        builder: () => this,
      );

  Widget storeProvider<S>(Store<S> store) => //
      StoreProvider<S>(store: store, child: this);
}

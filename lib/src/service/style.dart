import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'style.freezed.dart';

abstract class IStyle {
  ThemeData darkTheme();
  ThemeData lightTheme();
}

class Style implements IStyle {
  @override
  ThemeData darkTheme() => ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        primarySwatch: Colors.indigo,
        toggleableActiveColor: Colors.indigoAccent,
        accentColor: Colors.indigoAccent,
        //visualDensity: VisualDensity.adaptivePlatformDensity,
      );

  @override
  ThemeData lightTheme() => ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        primarySwatch: Colors.indigo,
        toggleableActiveColor: Colors.indigoAccent,
        accentColor: Colors.indigoAccent,
        //visualDensity: VisualDensity.adaptivePlatformDensity,
      );
}

@freezed
class BottomItem with _$BottomItem {
  const factory BottomItem(
    String title,
    String viewName,
    IconData normalIcon,
    IconData selectedIcon,
  ) = _BottomItem;
}

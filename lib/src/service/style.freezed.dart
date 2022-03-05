// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'style.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BottomItemTearOff {
  const _$BottomItemTearOff();

  _BottomItem call(String title, String viewName, IconData normalIcon,
      IconData selectedIcon) {
    return _BottomItem(
      title,
      viewName,
      normalIcon,
      selectedIcon,
    );
  }
}

/// @nodoc
const $BottomItem = _$BottomItemTearOff();

/// @nodoc
mixin _$BottomItem {
  String get title => throw _privateConstructorUsedError;
  String get viewName => throw _privateConstructorUsedError;
  IconData get normalIcon => throw _privateConstructorUsedError;
  IconData get selectedIcon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomItemCopyWith<BottomItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomItemCopyWith<$Res> {
  factory $BottomItemCopyWith(
          BottomItem value, $Res Function(BottomItem) then) =
      _$BottomItemCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String viewName,
      IconData normalIcon,
      IconData selectedIcon});
}

/// @nodoc
class _$BottomItemCopyWithImpl<$Res> implements $BottomItemCopyWith<$Res> {
  _$BottomItemCopyWithImpl(this._value, this._then);

  final BottomItem _value;
  // ignore: unused_field
  final $Res Function(BottomItem) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? viewName = freezed,
    Object? normalIcon = freezed,
    Object? selectedIcon = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      viewName: viewName == freezed
          ? _value.viewName
          : viewName // ignore: cast_nullable_to_non_nullable
              as String,
      normalIcon: normalIcon == freezed
          ? _value.normalIcon
          : normalIcon // ignore: cast_nullable_to_non_nullable
              as IconData,
      selectedIcon: selectedIcon == freezed
          ? _value.selectedIcon
          : selectedIcon // ignore: cast_nullable_to_non_nullable
              as IconData,
    ));
  }
}

/// @nodoc
abstract class _$BottomItemCopyWith<$Res> implements $BottomItemCopyWith<$Res> {
  factory _$BottomItemCopyWith(
          _BottomItem value, $Res Function(_BottomItem) then) =
      __$BottomItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String viewName,
      IconData normalIcon,
      IconData selectedIcon});
}

/// @nodoc
class __$BottomItemCopyWithImpl<$Res> extends _$BottomItemCopyWithImpl<$Res>
    implements _$BottomItemCopyWith<$Res> {
  __$BottomItemCopyWithImpl(
      _BottomItem _value, $Res Function(_BottomItem) _then)
      : super(_value, (v) => _then(v as _BottomItem));

  @override
  _BottomItem get _value => super._value as _BottomItem;

  @override
  $Res call({
    Object? title = freezed,
    Object? viewName = freezed,
    Object? normalIcon = freezed,
    Object? selectedIcon = freezed,
  }) {
    return _then(_BottomItem(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      viewName == freezed
          ? _value.viewName
          : viewName // ignore: cast_nullable_to_non_nullable
              as String,
      normalIcon == freezed
          ? _value.normalIcon
          : normalIcon // ignore: cast_nullable_to_non_nullable
              as IconData,
      selectedIcon == freezed
          ? _value.selectedIcon
          : selectedIcon // ignore: cast_nullable_to_non_nullable
              as IconData,
    ));
  }
}

/// @nodoc

class _$_BottomItem with DiagnosticableTreeMixin implements _BottomItem {
  const _$_BottomItem(
      this.title, this.viewName, this.normalIcon, this.selectedIcon);

  @override
  final String title;
  @override
  final String viewName;
  @override
  final IconData normalIcon;
  @override
  final IconData selectedIcon;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BottomItem(title: $title, viewName: $viewName, normalIcon: $normalIcon, selectedIcon: $selectedIcon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BottomItem'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('viewName', viewName))
      ..add(DiagnosticsProperty('normalIcon', normalIcon))
      ..add(DiagnosticsProperty('selectedIcon', selectedIcon));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BottomItem &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.viewName, viewName) &&
            const DeepCollectionEquality()
                .equals(other.normalIcon, normalIcon) &&
            const DeepCollectionEquality()
                .equals(other.selectedIcon, selectedIcon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(viewName),
      const DeepCollectionEquality().hash(normalIcon),
      const DeepCollectionEquality().hash(selectedIcon));

  @JsonKey(ignore: true)
  @override
  _$BottomItemCopyWith<_BottomItem> get copyWith =>
      __$BottomItemCopyWithImpl<_BottomItem>(this, _$identity);
}

abstract class _BottomItem implements BottomItem {
  const factory _BottomItem(String title, String viewName, IconData normalIcon,
      IconData selectedIcon) = _$_BottomItem;

  @override
  String get title;
  @override
  String get viewName;
  @override
  IconData get normalIcon;
  @override
  IconData get selectedIcon;
  @override
  @JsonKey(ignore: true)
  _$BottomItemCopyWith<_BottomItem> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

  _SettingsState call({bool isDarkMode = false, bool isiOS = false}) {
    return _SettingsState(
      isDarkMode: isDarkMode,
      isiOS: isiOS,
    );
  }
}

/// @nodoc
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  bool get isDarkMode => throw _privateConstructorUsedError;
  bool get isiOS => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
  $Res call({bool isDarkMode, bool isiOS});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;

  @override
  $Res call({
    Object? isDarkMode = freezed,
    Object? isiOS = freezed,
  }) {
    return _then(_value.copyWith(
      isDarkMode: isDarkMode == freezed
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      isiOS: isiOS == freezed
          ? _value.isiOS
          : isiOS // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(
          _SettingsState value, $Res Function(_SettingsState) then) =
      __$SettingsStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isDarkMode, bool isiOS});
}

/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(
      _SettingsState _value, $Res Function(_SettingsState) _then)
      : super(_value, (v) => _then(v as _SettingsState));

  @override
  _SettingsState get _value => super._value as _SettingsState;

  @override
  $Res call({
    Object? isDarkMode = freezed,
    Object? isiOS = freezed,
  }) {
    return _then(_SettingsState(
      isDarkMode: isDarkMode == freezed
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      isiOS: isiOS == freezed
          ? _value.isiOS
          : isiOS // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SettingsState implements _SettingsState {
  const _$_SettingsState({this.isDarkMode = false, this.isiOS = false});

  @JsonKey()
  @override
  final bool isDarkMode;
  @JsonKey()
  @override
  final bool isiOS;

  @override
  String toString() {
    return 'SettingsState(isDarkMode: $isDarkMode, isiOS: $isiOS)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SettingsState &&
            const DeepCollectionEquality()
                .equals(other.isDarkMode, isDarkMode) &&
            const DeepCollectionEquality().equals(other.isiOS, isiOS));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isDarkMode),
      const DeepCollectionEquality().hash(isiOS));

  @JsonKey(ignore: true)
  @override
  _$SettingsStateCopyWith<_SettingsState> get copyWith =>
      __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState({bool isDarkMode, bool isiOS}) =
      _$_SettingsState;

  @override
  bool get isDarkMode;
  @override
  bool get isiOS;
  @override
  @JsonKey(ignore: true)
  _$SettingsStateCopyWith<_SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SettingsActionTearOff {
  const _$SettingsActionTearOff();

  ThemeChanged themeChanged(bool theme) {
    return ThemeChanged(
      theme,
    );
  }
}

/// @nodoc
const $SettingsAction = _$SettingsActionTearOff();

/// @nodoc
mixin _$SettingsAction {
  bool get theme => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool theme) themeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool theme)? themeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool theme)? themeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeChanged value) themeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ThemeChanged value)? themeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeChanged value)? themeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsActionCopyWith<SettingsAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsActionCopyWith<$Res> {
  factory $SettingsActionCopyWith(
          SettingsAction value, $Res Function(SettingsAction) then) =
      _$SettingsActionCopyWithImpl<$Res>;
  $Res call({bool theme});
}

/// @nodoc
class _$SettingsActionCopyWithImpl<$Res>
    implements $SettingsActionCopyWith<$Res> {
  _$SettingsActionCopyWithImpl(this._value, this._then);

  final SettingsAction _value;
  // ignore: unused_field
  final $Res Function(SettingsAction) _then;

  @override
  $Res call({
    Object? theme = freezed,
  }) {
    return _then(_value.copyWith(
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $ThemeChangedCopyWith<$Res>
    implements $SettingsActionCopyWith<$Res> {
  factory $ThemeChangedCopyWith(
          ThemeChanged value, $Res Function(ThemeChanged) then) =
      _$ThemeChangedCopyWithImpl<$Res>;
  @override
  $Res call({bool theme});
}

/// @nodoc
class _$ThemeChangedCopyWithImpl<$Res>
    extends _$SettingsActionCopyWithImpl<$Res>
    implements $ThemeChangedCopyWith<$Res> {
  _$ThemeChangedCopyWithImpl(
      ThemeChanged _value, $Res Function(ThemeChanged) _then)
      : super(_value, (v) => _then(v as ThemeChanged));

  @override
  ThemeChanged get _value => super._value as ThemeChanged;

  @override
  $Res call({
    Object? theme = freezed,
  }) {
    return _then(ThemeChanged(
      theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ThemeChanged implements ThemeChanged {
  const _$ThemeChanged(this.theme);

  @override
  final bool theme;

  @override
  String toString() {
    return 'SettingsAction.themeChanged(theme: $theme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThemeChanged &&
            const DeepCollectionEquality().equals(other.theme, theme));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(theme));

  @JsonKey(ignore: true)
  @override
  $ThemeChangedCopyWith<ThemeChanged> get copyWith =>
      _$ThemeChangedCopyWithImpl<ThemeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool theme) themeChanged,
  }) {
    return themeChanged(theme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool theme)? themeChanged,
  }) {
    return themeChanged?.call(theme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool theme)? themeChanged,
    required TResult orElse(),
  }) {
    if (themeChanged != null) {
      return themeChanged(theme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeChanged value) themeChanged,
  }) {
    return themeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ThemeChanged value)? themeChanged,
  }) {
    return themeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeChanged value)? themeChanged,
    required TResult orElse(),
  }) {
    if (themeChanged != null) {
      return themeChanged(this);
    }
    return orElse();
  }
}

abstract class ThemeChanged implements SettingsAction {
  const factory ThemeChanged(bool theme) = _$ThemeChanged;

  @override
  bool get theme;
  @override
  @JsonKey(ignore: true)
  $ThemeChangedCopyWith<ThemeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

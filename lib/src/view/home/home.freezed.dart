// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call([int pos = 0]) {
    return _HomeState(
      pos,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  int get pos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({int pos});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? pos = freezed,
  }) {
    return _then(_value.copyWith(
      pos: pos == freezed
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call({int pos});
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object? pos = freezed,
  }) {
    return _then(_HomeState(
      pos == freezed
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HomeState with DiagnosticableTreeMixin implements _HomeState {
  const _$_HomeState([this.pos = 0]);

  @JsonKey()
  @override
  final int pos;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(pos: $pos)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('pos', pos));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            const DeepCollectionEquality().equals(other.pos, pos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pos));

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState([int pos]) = _$_HomeState;

  @override
  int get pos;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomeActionTearOff {
  const _$HomeActionTearOff();

  PosChanged posChanged(int pos) {
    return PosChanged(
      pos,
    );
  }
}

/// @nodoc
const $HomeAction = _$HomeActionTearOff();

/// @nodoc
mixin _$HomeAction {
  int get pos => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pos) posChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int pos)? posChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pos)? posChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PosChanged value) posChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PosChanged value)? posChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PosChanged value)? posChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeActionCopyWith<HomeAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeActionCopyWith<$Res> {
  factory $HomeActionCopyWith(
          HomeAction value, $Res Function(HomeAction) then) =
      _$HomeActionCopyWithImpl<$Res>;
  $Res call({int pos});
}

/// @nodoc
class _$HomeActionCopyWithImpl<$Res> implements $HomeActionCopyWith<$Res> {
  _$HomeActionCopyWithImpl(this._value, this._then);

  final HomeAction _value;
  // ignore: unused_field
  final $Res Function(HomeAction) _then;

  @override
  $Res call({
    Object? pos = freezed,
  }) {
    return _then(_value.copyWith(
      pos: pos == freezed
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $PosChangedCopyWith<$Res> implements $HomeActionCopyWith<$Res> {
  factory $PosChangedCopyWith(
          PosChanged value, $Res Function(PosChanged) then) =
      _$PosChangedCopyWithImpl<$Res>;
  @override
  $Res call({int pos});
}

/// @nodoc
class _$PosChangedCopyWithImpl<$Res> extends _$HomeActionCopyWithImpl<$Res>
    implements $PosChangedCopyWith<$Res> {
  _$PosChangedCopyWithImpl(PosChanged _value, $Res Function(PosChanged) _then)
      : super(_value, (v) => _then(v as PosChanged));

  @override
  PosChanged get _value => super._value as PosChanged;

  @override
  $Res call({
    Object? pos = freezed,
  }) {
    return _then(PosChanged(
      pos == freezed
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PosChanged with DiagnosticableTreeMixin implements PosChanged {
  const _$PosChanged(this.pos);

  @override
  final int pos;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeAction.posChanged(pos: $pos)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeAction.posChanged'))
      ..add(DiagnosticsProperty('pos', pos));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PosChanged &&
            const DeepCollectionEquality().equals(other.pos, pos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pos));

  @JsonKey(ignore: true)
  @override
  $PosChangedCopyWith<PosChanged> get copyWith =>
      _$PosChangedCopyWithImpl<PosChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pos) posChanged,
  }) {
    return posChanged(pos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int pos)? posChanged,
  }) {
    return posChanged?.call(pos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pos)? posChanged,
    required TResult orElse(),
  }) {
    if (posChanged != null) {
      return posChanged(pos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PosChanged value) posChanged,
  }) {
    return posChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PosChanged value)? posChanged,
  }) {
    return posChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PosChanged value)? posChanged,
    required TResult orElse(),
  }) {
    if (posChanged != null) {
      return posChanged(this);
    }
    return orElse();
  }
}

abstract class PosChanged implements HomeAction {
  const factory PosChanged(int pos) = _$PosChanged;

  @override
  int get pos;
  @override
  @JsonKey(ignore: true)
  $PosChangedCopyWith<PosChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

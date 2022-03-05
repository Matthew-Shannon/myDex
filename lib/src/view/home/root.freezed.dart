// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'root.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RootStateTearOff {
  const _$RootStateTearOff();

  _RootState call([int pos = 0]) {
    return _RootState(
      pos,
    );
  }
}

/// @nodoc
const $RootState = _$RootStateTearOff();

/// @nodoc
mixin _$RootState {
  int get pos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RootStateCopyWith<RootState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RootStateCopyWith<$Res> {
  factory $RootStateCopyWith(RootState value, $Res Function(RootState) then) =
      _$RootStateCopyWithImpl<$Res>;
  $Res call({int pos});
}

/// @nodoc
class _$RootStateCopyWithImpl<$Res> implements $RootStateCopyWith<$Res> {
  _$RootStateCopyWithImpl(this._value, this._then);

  final RootState _value;
  // ignore: unused_field
  final $Res Function(RootState) _then;

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
abstract class _$RootStateCopyWith<$Res> implements $RootStateCopyWith<$Res> {
  factory _$RootStateCopyWith(
          _RootState value, $Res Function(_RootState) then) =
      __$RootStateCopyWithImpl<$Res>;
  @override
  $Res call({int pos});
}

/// @nodoc
class __$RootStateCopyWithImpl<$Res> extends _$RootStateCopyWithImpl<$Res>
    implements _$RootStateCopyWith<$Res> {
  __$RootStateCopyWithImpl(_RootState _value, $Res Function(_RootState) _then)
      : super(_value, (v) => _then(v as _RootState));

  @override
  _RootState get _value => super._value as _RootState;

  @override
  $Res call({
    Object? pos = freezed,
  }) {
    return _then(_RootState(
      pos == freezed
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RootState with DiagnosticableTreeMixin implements _RootState {
  const _$_RootState([this.pos = 0]);

  @JsonKey()
  @override
  final int pos;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RootState(pos: $pos)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RootState'))
      ..add(DiagnosticsProperty('pos', pos));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RootState &&
            const DeepCollectionEquality().equals(other.pos, pos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pos));

  @JsonKey(ignore: true)
  @override
  _$RootStateCopyWith<_RootState> get copyWith =>
      __$RootStateCopyWithImpl<_RootState>(this, _$identity);
}

abstract class _RootState implements RootState {
  const factory _RootState([int pos]) = _$_RootState;

  @override
  int get pos;
  @override
  @JsonKey(ignore: true)
  _$RootStateCopyWith<_RootState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RootActionTearOff {
  const _$RootActionTearOff();

  PosChanged posChanged(int pos) {
    return PosChanged(
      pos,
    );
  }
}

/// @nodoc
const $RootAction = _$RootActionTearOff();

/// @nodoc
mixin _$RootAction {
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
  $RootActionCopyWith<RootAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RootActionCopyWith<$Res> {
  factory $RootActionCopyWith(
          RootAction value, $Res Function(RootAction) then) =
      _$RootActionCopyWithImpl<$Res>;
  $Res call({int pos});
}

/// @nodoc
class _$RootActionCopyWithImpl<$Res> implements $RootActionCopyWith<$Res> {
  _$RootActionCopyWithImpl(this._value, this._then);

  final RootAction _value;
  // ignore: unused_field
  final $Res Function(RootAction) _then;

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
abstract class $PosChangedCopyWith<$Res> implements $RootActionCopyWith<$Res> {
  factory $PosChangedCopyWith(
          PosChanged value, $Res Function(PosChanged) then) =
      _$PosChangedCopyWithImpl<$Res>;
  @override
  $Res call({int pos});
}

/// @nodoc
class _$PosChangedCopyWithImpl<$Res> extends _$RootActionCopyWithImpl<$Res>
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
    return 'RootAction.posChanged(pos: $pos)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RootAction.posChanged'))
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

abstract class PosChanged implements RootAction {
  const factory PosChanged(int pos) = _$PosChanged;

  @override
  int get pos;
  @override
  @JsonKey(ignore: true)
  $PosChangedCopyWith<PosChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

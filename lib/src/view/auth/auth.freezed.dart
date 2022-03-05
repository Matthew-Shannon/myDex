// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _AuthState call(
      {User owner = const User(),
      bool isAuthed = false,
      LoginState loginState = const LoginState(),
      RegisterState registerState = const RegisterState()}) {
    return _AuthState(
      owner: owner,
      isAuthed: isAuthed,
      loginState: loginState,
      registerState: registerState,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  User get owner => throw _privateConstructorUsedError;
  bool get isAuthed => throw _privateConstructorUsedError;
  LoginState get loginState => throw _privateConstructorUsedError;
  RegisterState get registerState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call(
      {User owner,
      bool isAuthed,
      LoginState loginState,
      RegisterState registerState});

  $LoginStateCopyWith<$Res> get loginState;
  $RegisterStateCopyWith<$Res> get registerState;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object? owner = freezed,
    Object? isAuthed = freezed,
    Object? loginState = freezed,
    Object? registerState = freezed,
  }) {
    return _then(_value.copyWith(
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User,
      isAuthed: isAuthed == freezed
          ? _value.isAuthed
          : isAuthed // ignore: cast_nullable_to_non_nullable
              as bool,
      loginState: loginState == freezed
          ? _value.loginState
          : loginState // ignore: cast_nullable_to_non_nullable
              as LoginState,
      registerState: registerState == freezed
          ? _value.registerState
          : registerState // ignore: cast_nullable_to_non_nullable
              as RegisterState,
    ));
  }

  @override
  $LoginStateCopyWith<$Res> get loginState {
    return $LoginStateCopyWith<$Res>(_value.loginState, (value) {
      return _then(_value.copyWith(loginState: value));
    });
  }

  @override
  $RegisterStateCopyWith<$Res> get registerState {
    return $RegisterStateCopyWith<$Res>(_value.registerState, (value) {
      return _then(_value.copyWith(registerState: value));
    });
  }
}

/// @nodoc
abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {User owner,
      bool isAuthed,
      LoginState loginState,
      RegisterState registerState});

  @override
  $LoginStateCopyWith<$Res> get loginState;
  @override
  $RegisterStateCopyWith<$Res> get registerState;
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState _value, $Res Function(_AuthState) _then)
      : super(_value, (v) => _then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;

  @override
  $Res call({
    Object? owner = freezed,
    Object? isAuthed = freezed,
    Object? loginState = freezed,
    Object? registerState = freezed,
  }) {
    return _then(_AuthState(
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User,
      isAuthed: isAuthed == freezed
          ? _value.isAuthed
          : isAuthed // ignore: cast_nullable_to_non_nullable
              as bool,
      loginState: loginState == freezed
          ? _value.loginState
          : loginState // ignore: cast_nullable_to_non_nullable
              as LoginState,
      registerState: registerState == freezed
          ? _value.registerState
          : registerState // ignore: cast_nullable_to_non_nullable
              as RegisterState,
    ));
  }
}

/// @nodoc

class _$_AuthState with DiagnosticableTreeMixin implements _AuthState {
  const _$_AuthState(
      {this.owner = const User(),
      this.isAuthed = false,
      this.loginState = const LoginState(),
      this.registerState = const RegisterState()});

  @JsonKey()
  @override
  final User owner;
  @JsonKey()
  @override
  final bool isAuthed;
  @JsonKey()
  @override
  final LoginState loginState;
  @JsonKey()
  @override
  final RegisterState registerState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState(owner: $owner, isAuthed: $isAuthed, loginState: $loginState, registerState: $registerState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState'))
      ..add(DiagnosticsProperty('owner', owner))
      ..add(DiagnosticsProperty('isAuthed', isAuthed))
      ..add(DiagnosticsProperty('loginState', loginState))
      ..add(DiagnosticsProperty('registerState', registerState));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthState &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality().equals(other.isAuthed, isAuthed) &&
            const DeepCollectionEquality()
                .equals(other.loginState, loginState) &&
            const DeepCollectionEquality()
                .equals(other.registerState, registerState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(owner),
      const DeepCollectionEquality().hash(isAuthed),
      const DeepCollectionEquality().hash(loginState),
      const DeepCollectionEquality().hash(registerState));

  @JsonKey(ignore: true)
  @override
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {User owner,
      bool isAuthed,
      LoginState loginState,
      RegisterState registerState}) = _$_AuthState;

  @override
  User get owner;
  @override
  bool get isAuthed;
  @override
  LoginState get loginState;
  @override
  RegisterState get registerState;
  @override
  @JsonKey(ignore: true)
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthActionTearOff {
  const _$AuthActionTearOff();

  AuthChanged authChanged(bool auth) {
    return AuthChanged(
      auth,
    );
  }

  OwnerChanged ownerChanged(User owner) {
    return OwnerChanged(
      owner,
    );
  }
}

/// @nodoc
const $AuthAction = _$AuthActionTearOff();

/// @nodoc
mixin _$AuthAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool auth) authChanged,
    required TResult Function(User owner) ownerChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool auth)? authChanged,
    TResult Function(User owner)? ownerChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool auth)? authChanged,
    TResult Function(User owner)? ownerChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthChanged value) authChanged,
    required TResult Function(OwnerChanged value) ownerChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthChanged value)? authChanged,
    TResult Function(OwnerChanged value)? ownerChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthChanged value)? authChanged,
    TResult Function(OwnerChanged value)? ownerChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthActionCopyWith<$Res> {
  factory $AuthActionCopyWith(
          AuthAction value, $Res Function(AuthAction) then) =
      _$AuthActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthActionCopyWithImpl<$Res> implements $AuthActionCopyWith<$Res> {
  _$AuthActionCopyWithImpl(this._value, this._then);

  final AuthAction _value;
  // ignore: unused_field
  final $Res Function(AuthAction) _then;
}

/// @nodoc
abstract class $AuthChangedCopyWith<$Res> {
  factory $AuthChangedCopyWith(
          AuthChanged value, $Res Function(AuthChanged) then) =
      _$AuthChangedCopyWithImpl<$Res>;
  $Res call({bool auth});
}

/// @nodoc
class _$AuthChangedCopyWithImpl<$Res> extends _$AuthActionCopyWithImpl<$Res>
    implements $AuthChangedCopyWith<$Res> {
  _$AuthChangedCopyWithImpl(
      AuthChanged _value, $Res Function(AuthChanged) _then)
      : super(_value, (v) => _then(v as AuthChanged));

  @override
  AuthChanged get _value => super._value as AuthChanged;

  @override
  $Res call({
    Object? auth = freezed,
  }) {
    return _then(AuthChanged(
      auth == freezed
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthChanged with DiagnosticableTreeMixin implements AuthChanged {
  const _$AuthChanged(this.auth);

  @override
  final bool auth;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthAction.authChanged(auth: $auth)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthAction.authChanged'))
      ..add(DiagnosticsProperty('auth', auth));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthChanged &&
            const DeepCollectionEquality().equals(other.auth, auth));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(auth));

  @JsonKey(ignore: true)
  @override
  $AuthChangedCopyWith<AuthChanged> get copyWith =>
      _$AuthChangedCopyWithImpl<AuthChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool auth) authChanged,
    required TResult Function(User owner) ownerChanged,
  }) {
    return authChanged(auth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool auth)? authChanged,
    TResult Function(User owner)? ownerChanged,
  }) {
    return authChanged?.call(auth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool auth)? authChanged,
    TResult Function(User owner)? ownerChanged,
    required TResult orElse(),
  }) {
    if (authChanged != null) {
      return authChanged(auth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthChanged value) authChanged,
    required TResult Function(OwnerChanged value) ownerChanged,
  }) {
    return authChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthChanged value)? authChanged,
    TResult Function(OwnerChanged value)? ownerChanged,
  }) {
    return authChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthChanged value)? authChanged,
    TResult Function(OwnerChanged value)? ownerChanged,
    required TResult orElse(),
  }) {
    if (authChanged != null) {
      return authChanged(this);
    }
    return orElse();
  }
}

abstract class AuthChanged implements AuthAction {
  const factory AuthChanged(bool auth) = _$AuthChanged;

  bool get auth;
  @JsonKey(ignore: true)
  $AuthChangedCopyWith<AuthChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerChangedCopyWith<$Res> {
  factory $OwnerChangedCopyWith(
          OwnerChanged value, $Res Function(OwnerChanged) then) =
      _$OwnerChangedCopyWithImpl<$Res>;
  $Res call({User owner});
}

/// @nodoc
class _$OwnerChangedCopyWithImpl<$Res> extends _$AuthActionCopyWithImpl<$Res>
    implements $OwnerChangedCopyWith<$Res> {
  _$OwnerChangedCopyWithImpl(
      OwnerChanged _value, $Res Function(OwnerChanged) _then)
      : super(_value, (v) => _then(v as OwnerChanged));

  @override
  OwnerChanged get _value => super._value as OwnerChanged;

  @override
  $Res call({
    Object? owner = freezed,
  }) {
    return _then(OwnerChanged(
      owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$OwnerChanged with DiagnosticableTreeMixin implements OwnerChanged {
  const _$OwnerChanged(this.owner);

  @override
  final User owner;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthAction.ownerChanged(owner: $owner)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthAction.ownerChanged'))
      ..add(DiagnosticsProperty('owner', owner));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OwnerChanged &&
            const DeepCollectionEquality().equals(other.owner, owner));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(owner));

  @JsonKey(ignore: true)
  @override
  $OwnerChangedCopyWith<OwnerChanged> get copyWith =>
      _$OwnerChangedCopyWithImpl<OwnerChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool auth) authChanged,
    required TResult Function(User owner) ownerChanged,
  }) {
    return ownerChanged(owner);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool auth)? authChanged,
    TResult Function(User owner)? ownerChanged,
  }) {
    return ownerChanged?.call(owner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool auth)? authChanged,
    TResult Function(User owner)? ownerChanged,
    required TResult orElse(),
  }) {
    if (ownerChanged != null) {
      return ownerChanged(owner);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthChanged value) authChanged,
    required TResult Function(OwnerChanged value) ownerChanged,
  }) {
    return ownerChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthChanged value)? authChanged,
    TResult Function(OwnerChanged value)? ownerChanged,
  }) {
    return ownerChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthChanged value)? authChanged,
    TResult Function(OwnerChanged value)? ownerChanged,
    required TResult orElse(),
  }) {
    if (ownerChanged != null) {
      return ownerChanged(this);
    }
    return orElse();
  }
}

abstract class OwnerChanged implements AuthAction {
  const factory OwnerChanged(User owner) = _$OwnerChanged;

  User get owner;
  @JsonKey(ignore: true)
  $OwnerChangedCopyWith<OwnerChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

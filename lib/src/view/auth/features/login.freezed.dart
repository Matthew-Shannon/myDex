// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginActionTearOff {
  const _$LoginActionTearOff();

  EmailTextChanged emailTextChanged(String email) {
    return EmailTextChanged(
      email,
    );
  }

  EmailErrorChanged emailErrorChanged(String? emailError) {
    return EmailErrorChanged(
      emailError,
    );
  }

  PasswordTextChanged passwordTextChanged(String password) {
    return PasswordTextChanged(
      password,
    );
  }

  PasswordErrorChanged passwordErrorChanged(String? passwordError) {
    return PasswordErrorChanged(
      passwordError,
    );
  }
}

/// @nodoc
const $LoginAction = _$LoginActionTearOff();

/// @nodoc
mixin _$LoginAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailTextChanged,
    required TResult Function(String? emailError) emailErrorChanged,
    required TResult Function(String password) passwordTextChanged,
    required TResult Function(String? passwordError) passwordErrorChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailTextChanged,
    TResult Function(String? emailError)? emailErrorChanged,
    TResult Function(String password)? passwordTextChanged,
    TResult Function(String? passwordError)? passwordErrorChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailTextChanged,
    TResult Function(String? emailError)? emailErrorChanged,
    TResult Function(String password)? passwordTextChanged,
    TResult Function(String? passwordError)? passwordErrorChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailTextChanged value) emailTextChanged,
    required TResult Function(EmailErrorChanged value) emailErrorChanged,
    required TResult Function(PasswordTextChanged value) passwordTextChanged,
    required TResult Function(PasswordErrorChanged value) passwordErrorChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailTextChanged value)? emailTextChanged,
    TResult Function(EmailErrorChanged value)? emailErrorChanged,
    TResult Function(PasswordTextChanged value)? passwordTextChanged,
    TResult Function(PasswordErrorChanged value)? passwordErrorChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailTextChanged value)? emailTextChanged,
    TResult Function(EmailErrorChanged value)? emailErrorChanged,
    TResult Function(PasswordTextChanged value)? passwordTextChanged,
    TResult Function(PasswordErrorChanged value)? passwordErrorChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginActionCopyWith<$Res> {
  factory $LoginActionCopyWith(
          LoginAction value, $Res Function(LoginAction) then) =
      _$LoginActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginActionCopyWithImpl<$Res> implements $LoginActionCopyWith<$Res> {
  _$LoginActionCopyWithImpl(this._value, this._then);

  final LoginAction _value;
  // ignore: unused_field
  final $Res Function(LoginAction) _then;
}

/// @nodoc
abstract class $EmailTextChangedCopyWith<$Res> {
  factory $EmailTextChangedCopyWith(
          EmailTextChanged value, $Res Function(EmailTextChanged) then) =
      _$EmailTextChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailTextChangedCopyWithImpl<$Res>
    extends _$LoginActionCopyWithImpl<$Res>
    implements $EmailTextChangedCopyWith<$Res> {
  _$EmailTextChangedCopyWithImpl(
      EmailTextChanged _value, $Res Function(EmailTextChanged) _then)
      : super(_value, (v) => _then(v as EmailTextChanged));

  @override
  EmailTextChanged get _value => super._value as EmailTextChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(EmailTextChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailTextChanged
    with DiagnosticableTreeMixin
    implements EmailTextChanged {
  const _$EmailTextChanged(this.email);

  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginAction.emailTextChanged(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginAction.emailTextChanged'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailTextChanged &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  $EmailTextChangedCopyWith<EmailTextChanged> get copyWith =>
      _$EmailTextChangedCopyWithImpl<EmailTextChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailTextChanged,
    required TResult Function(String? emailError) emailErrorChanged,
    required TResult Function(String password) passwordTextChanged,
    required TResult Function(String? passwordError) passwordErrorChanged,
  }) {
    return emailTextChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailTextChanged,
    TResult Function(String? emailError)? emailErrorChanged,
    TResult Function(String password)? passwordTextChanged,
    TResult Function(String? passwordError)? passwordErrorChanged,
  }) {
    return emailTextChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailTextChanged,
    TResult Function(String? emailError)? emailErrorChanged,
    TResult Function(String password)? passwordTextChanged,
    TResult Function(String? passwordError)? passwordErrorChanged,
    required TResult orElse(),
  }) {
    if (emailTextChanged != null) {
      return emailTextChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailTextChanged value) emailTextChanged,
    required TResult Function(EmailErrorChanged value) emailErrorChanged,
    required TResult Function(PasswordTextChanged value) passwordTextChanged,
    required TResult Function(PasswordErrorChanged value) passwordErrorChanged,
  }) {
    return emailTextChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailTextChanged value)? emailTextChanged,
    TResult Function(EmailErrorChanged value)? emailErrorChanged,
    TResult Function(PasswordTextChanged value)? passwordTextChanged,
    TResult Function(PasswordErrorChanged value)? passwordErrorChanged,
  }) {
    return emailTextChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailTextChanged value)? emailTextChanged,
    TResult Function(EmailErrorChanged value)? emailErrorChanged,
    TResult Function(PasswordTextChanged value)? passwordTextChanged,
    TResult Function(PasswordErrorChanged value)? passwordErrorChanged,
    required TResult orElse(),
  }) {
    if (emailTextChanged != null) {
      return emailTextChanged(this);
    }
    return orElse();
  }
}

abstract class EmailTextChanged implements LoginAction {
  const factory EmailTextChanged(String email) = _$EmailTextChanged;

  String get email;
  @JsonKey(ignore: true)
  $EmailTextChangedCopyWith<EmailTextChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailErrorChangedCopyWith<$Res> {
  factory $EmailErrorChangedCopyWith(
          EmailErrorChanged value, $Res Function(EmailErrorChanged) then) =
      _$EmailErrorChangedCopyWithImpl<$Res>;
  $Res call({String? emailError});
}

/// @nodoc
class _$EmailErrorChangedCopyWithImpl<$Res>
    extends _$LoginActionCopyWithImpl<$Res>
    implements $EmailErrorChangedCopyWith<$Res> {
  _$EmailErrorChangedCopyWithImpl(
      EmailErrorChanged _value, $Res Function(EmailErrorChanged) _then)
      : super(_value, (v) => _then(v as EmailErrorChanged));

  @override
  EmailErrorChanged get _value => super._value as EmailErrorChanged;

  @override
  $Res call({
    Object? emailError = freezed,
  }) {
    return _then(EmailErrorChanged(
      emailError == freezed
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EmailErrorChanged
    with DiagnosticableTreeMixin
    implements EmailErrorChanged {
  const _$EmailErrorChanged(this.emailError);

  @override
  final String? emailError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginAction.emailErrorChanged(emailError: $emailError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginAction.emailErrorChanged'))
      ..add(DiagnosticsProperty('emailError', emailError));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailErrorChanged &&
            const DeepCollectionEquality()
                .equals(other.emailError, emailError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(emailError));

  @JsonKey(ignore: true)
  @override
  $EmailErrorChangedCopyWith<EmailErrorChanged> get copyWith =>
      _$EmailErrorChangedCopyWithImpl<EmailErrorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailTextChanged,
    required TResult Function(String? emailError) emailErrorChanged,
    required TResult Function(String password) passwordTextChanged,
    required TResult Function(String? passwordError) passwordErrorChanged,
  }) {
    return emailErrorChanged(emailError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailTextChanged,
    TResult Function(String? emailError)? emailErrorChanged,
    TResult Function(String password)? passwordTextChanged,
    TResult Function(String? passwordError)? passwordErrorChanged,
  }) {
    return emailErrorChanged?.call(emailError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailTextChanged,
    TResult Function(String? emailError)? emailErrorChanged,
    TResult Function(String password)? passwordTextChanged,
    TResult Function(String? passwordError)? passwordErrorChanged,
    required TResult orElse(),
  }) {
    if (emailErrorChanged != null) {
      return emailErrorChanged(emailError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailTextChanged value) emailTextChanged,
    required TResult Function(EmailErrorChanged value) emailErrorChanged,
    required TResult Function(PasswordTextChanged value) passwordTextChanged,
    required TResult Function(PasswordErrorChanged value) passwordErrorChanged,
  }) {
    return emailErrorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailTextChanged value)? emailTextChanged,
    TResult Function(EmailErrorChanged value)? emailErrorChanged,
    TResult Function(PasswordTextChanged value)? passwordTextChanged,
    TResult Function(PasswordErrorChanged value)? passwordErrorChanged,
  }) {
    return emailErrorChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailTextChanged value)? emailTextChanged,
    TResult Function(EmailErrorChanged value)? emailErrorChanged,
    TResult Function(PasswordTextChanged value)? passwordTextChanged,
    TResult Function(PasswordErrorChanged value)? passwordErrorChanged,
    required TResult orElse(),
  }) {
    if (emailErrorChanged != null) {
      return emailErrorChanged(this);
    }
    return orElse();
  }
}

abstract class EmailErrorChanged implements LoginAction {
  const factory EmailErrorChanged(String? emailError) = _$EmailErrorChanged;

  String? get emailError;
  @JsonKey(ignore: true)
  $EmailErrorChangedCopyWith<EmailErrorChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordTextChangedCopyWith<$Res> {
  factory $PasswordTextChangedCopyWith(
          PasswordTextChanged value, $Res Function(PasswordTextChanged) then) =
      _$PasswordTextChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$PasswordTextChangedCopyWithImpl<$Res>
    extends _$LoginActionCopyWithImpl<$Res>
    implements $PasswordTextChangedCopyWith<$Res> {
  _$PasswordTextChangedCopyWithImpl(
      PasswordTextChanged _value, $Res Function(PasswordTextChanged) _then)
      : super(_value, (v) => _then(v as PasswordTextChanged));

  @override
  PasswordTextChanged get _value => super._value as PasswordTextChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(PasswordTextChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordTextChanged
    with DiagnosticableTreeMixin
    implements PasswordTextChanged {
  const _$PasswordTextChanged(this.password);

  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginAction.passwordTextChanged(password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginAction.passwordTextChanged'))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasswordTextChanged &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $PasswordTextChangedCopyWith<PasswordTextChanged> get copyWith =>
      _$PasswordTextChangedCopyWithImpl<PasswordTextChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailTextChanged,
    required TResult Function(String? emailError) emailErrorChanged,
    required TResult Function(String password) passwordTextChanged,
    required TResult Function(String? passwordError) passwordErrorChanged,
  }) {
    return passwordTextChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailTextChanged,
    TResult Function(String? emailError)? emailErrorChanged,
    TResult Function(String password)? passwordTextChanged,
    TResult Function(String? passwordError)? passwordErrorChanged,
  }) {
    return passwordTextChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailTextChanged,
    TResult Function(String? emailError)? emailErrorChanged,
    TResult Function(String password)? passwordTextChanged,
    TResult Function(String? passwordError)? passwordErrorChanged,
    required TResult orElse(),
  }) {
    if (passwordTextChanged != null) {
      return passwordTextChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailTextChanged value) emailTextChanged,
    required TResult Function(EmailErrorChanged value) emailErrorChanged,
    required TResult Function(PasswordTextChanged value) passwordTextChanged,
    required TResult Function(PasswordErrorChanged value) passwordErrorChanged,
  }) {
    return passwordTextChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailTextChanged value)? emailTextChanged,
    TResult Function(EmailErrorChanged value)? emailErrorChanged,
    TResult Function(PasswordTextChanged value)? passwordTextChanged,
    TResult Function(PasswordErrorChanged value)? passwordErrorChanged,
  }) {
    return passwordTextChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailTextChanged value)? emailTextChanged,
    TResult Function(EmailErrorChanged value)? emailErrorChanged,
    TResult Function(PasswordTextChanged value)? passwordTextChanged,
    TResult Function(PasswordErrorChanged value)? passwordErrorChanged,
    required TResult orElse(),
  }) {
    if (passwordTextChanged != null) {
      return passwordTextChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordTextChanged implements LoginAction {
  const factory PasswordTextChanged(String password) = _$PasswordTextChanged;

  String get password;
  @JsonKey(ignore: true)
  $PasswordTextChangedCopyWith<PasswordTextChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordErrorChangedCopyWith<$Res> {
  factory $PasswordErrorChangedCopyWith(PasswordErrorChanged value,
          $Res Function(PasswordErrorChanged) then) =
      _$PasswordErrorChangedCopyWithImpl<$Res>;
  $Res call({String? passwordError});
}

/// @nodoc
class _$PasswordErrorChangedCopyWithImpl<$Res>
    extends _$LoginActionCopyWithImpl<$Res>
    implements $PasswordErrorChangedCopyWith<$Res> {
  _$PasswordErrorChangedCopyWithImpl(
      PasswordErrorChanged _value, $Res Function(PasswordErrorChanged) _then)
      : super(_value, (v) => _then(v as PasswordErrorChanged));

  @override
  PasswordErrorChanged get _value => super._value as PasswordErrorChanged;

  @override
  $Res call({
    Object? passwordError = freezed,
  }) {
    return _then(PasswordErrorChanged(
      passwordError == freezed
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PasswordErrorChanged
    with DiagnosticableTreeMixin
    implements PasswordErrorChanged {
  const _$PasswordErrorChanged(this.passwordError);

  @override
  final String? passwordError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginAction.passwordErrorChanged(passwordError: $passwordError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginAction.passwordErrorChanged'))
      ..add(DiagnosticsProperty('passwordError', passwordError));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasswordErrorChanged &&
            const DeepCollectionEquality()
                .equals(other.passwordError, passwordError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(passwordError));

  @JsonKey(ignore: true)
  @override
  $PasswordErrorChangedCopyWith<PasswordErrorChanged> get copyWith =>
      _$PasswordErrorChangedCopyWithImpl<PasswordErrorChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailTextChanged,
    required TResult Function(String? emailError) emailErrorChanged,
    required TResult Function(String password) passwordTextChanged,
    required TResult Function(String? passwordError) passwordErrorChanged,
  }) {
    return passwordErrorChanged(passwordError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailTextChanged,
    TResult Function(String? emailError)? emailErrorChanged,
    TResult Function(String password)? passwordTextChanged,
    TResult Function(String? passwordError)? passwordErrorChanged,
  }) {
    return passwordErrorChanged?.call(passwordError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailTextChanged,
    TResult Function(String? emailError)? emailErrorChanged,
    TResult Function(String password)? passwordTextChanged,
    TResult Function(String? passwordError)? passwordErrorChanged,
    required TResult orElse(),
  }) {
    if (passwordErrorChanged != null) {
      return passwordErrorChanged(passwordError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailTextChanged value) emailTextChanged,
    required TResult Function(EmailErrorChanged value) emailErrorChanged,
    required TResult Function(PasswordTextChanged value) passwordTextChanged,
    required TResult Function(PasswordErrorChanged value) passwordErrorChanged,
  }) {
    return passwordErrorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailTextChanged value)? emailTextChanged,
    TResult Function(EmailErrorChanged value)? emailErrorChanged,
    TResult Function(PasswordTextChanged value)? passwordTextChanged,
    TResult Function(PasswordErrorChanged value)? passwordErrorChanged,
  }) {
    return passwordErrorChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailTextChanged value)? emailTextChanged,
    TResult Function(EmailErrorChanged value)? emailErrorChanged,
    TResult Function(PasswordTextChanged value)? passwordTextChanged,
    TResult Function(PasswordErrorChanged value)? passwordErrorChanged,
    required TResult orElse(),
  }) {
    if (passwordErrorChanged != null) {
      return passwordErrorChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordErrorChanged implements LoginAction {
  const factory PasswordErrorChanged(String? passwordError) =
      _$PasswordErrorChanged;

  String? get passwordError;
  @JsonKey(ignore: true)
  $PasswordErrorChangedCopyWith<PasswordErrorChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  _LoginState call(
      [String emailText = '',
      String passwordText = '',
      Map<String, String?> inputErrors = const {}]) {
    return _LoginState(
      emailText,
      passwordText,
      inputErrors,
    );
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  String get emailText => throw _privateConstructorUsedError;
  String get passwordText => throw _privateConstructorUsedError;
  Map<String, String?> get inputErrors => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {String emailText,
      String passwordText,
      Map<String, String?> inputErrors});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? emailText = freezed,
    Object? passwordText = freezed,
    Object? inputErrors = freezed,
  }) {
    return _then(_value.copyWith(
      emailText: emailText == freezed
          ? _value.emailText
          : emailText // ignore: cast_nullable_to_non_nullable
              as String,
      passwordText: passwordText == freezed
          ? _value.passwordText
          : passwordText // ignore: cast_nullable_to_non_nullable
              as String,
      inputErrors: inputErrors == freezed
          ? _value.inputErrors
          : inputErrors // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>,
    ));
  }
}

/// @nodoc
abstract class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String emailText,
      String passwordText,
      Map<String, String?> inputErrors});
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object? emailText = freezed,
    Object? passwordText = freezed,
    Object? inputErrors = freezed,
  }) {
    return _then(_LoginState(
      emailText == freezed
          ? _value.emailText
          : emailText // ignore: cast_nullable_to_non_nullable
              as String,
      passwordText == freezed
          ? _value.passwordText
          : passwordText // ignore: cast_nullable_to_non_nullable
              as String,
      inputErrors == freezed
          ? _value.inputErrors
          : inputErrors // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>,
    ));
  }
}

/// @nodoc

class _$_LoginState with DiagnosticableTreeMixin implements _LoginState {
  const _$_LoginState(
      [this.emailText = '',
      this.passwordText = '',
      this.inputErrors = const {}]);

  @JsonKey()
  @override
  final String emailText;
  @JsonKey()
  @override
  final String passwordText;
  @JsonKey()
  @override
  final Map<String, String?> inputErrors;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState(emailText: $emailText, passwordText: $passwordText, inputErrors: $inputErrors)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState'))
      ..add(DiagnosticsProperty('emailText', emailText))
      ..add(DiagnosticsProperty('passwordText', passwordText))
      ..add(DiagnosticsProperty('inputErrors', inputErrors));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginState &&
            const DeepCollectionEquality().equals(other.emailText, emailText) &&
            const DeepCollectionEquality()
                .equals(other.passwordText, passwordText) &&
            const DeepCollectionEquality()
                .equals(other.inputErrors, inputErrors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailText),
      const DeepCollectionEquality().hash(passwordText),
      const DeepCollectionEquality().hash(inputErrors));

  @JsonKey(ignore: true)
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      [String emailText,
      String passwordText,
      Map<String, String?> inputErrors]) = _$_LoginState;

  @override
  String get emailText;
  @override
  String get passwordText;
  @override
  Map<String, String?> get inputErrors;
  @override
  @JsonKey(ignore: true)
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

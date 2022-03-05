// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterActionTearOff {
  const _$RegisterActionTearOff();

  NameTextChanged nameTextChanged(String name) {
    return NameTextChanged(
      name,
    );
  }

  NameErrorChanged nameErrorChanged(String? nameError) {
    return NameErrorChanged(
      nameError,
    );
  }

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
const $RegisterAction = _$RegisterActionTearOff();

/// @nodoc
mixin _$RegisterAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameTextChanged,
    required TResult Function(String? nameError) nameErrorChanged,
    required TResult Function(String email) emailTextChanged,
    required TResult Function(String? emailError) emailErrorChanged,
    required TResult Function(String password) passwordTextChanged,
    required TResult Function(String? passwordError) passwordErrorChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name)? nameTextChanged,
    TResult Function(String? nameError)? nameErrorChanged,
    TResult Function(String email)? emailTextChanged,
    TResult Function(String? emailError)? emailErrorChanged,
    TResult Function(String password)? passwordTextChanged,
    TResult Function(String? passwordError)? passwordErrorChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameTextChanged,
    TResult Function(String? nameError)? nameErrorChanged,
    TResult Function(String email)? emailTextChanged,
    TResult Function(String? emailError)? emailErrorChanged,
    TResult Function(String password)? passwordTextChanged,
    TResult Function(String? passwordError)? passwordErrorChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameTextChanged value) nameTextChanged,
    required TResult Function(NameErrorChanged value) nameErrorChanged,
    required TResult Function(EmailTextChanged value) emailTextChanged,
    required TResult Function(EmailErrorChanged value) emailErrorChanged,
    required TResult Function(PasswordTextChanged value) passwordTextChanged,
    required TResult Function(PasswordErrorChanged value) passwordErrorChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NameTextChanged value)? nameTextChanged,
    TResult Function(NameErrorChanged value)? nameErrorChanged,
    TResult Function(EmailTextChanged value)? emailTextChanged,
    TResult Function(EmailErrorChanged value)? emailErrorChanged,
    TResult Function(PasswordTextChanged value)? passwordTextChanged,
    TResult Function(PasswordErrorChanged value)? passwordErrorChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameTextChanged value)? nameTextChanged,
    TResult Function(NameErrorChanged value)? nameErrorChanged,
    TResult Function(EmailTextChanged value)? emailTextChanged,
    TResult Function(EmailErrorChanged value)? emailErrorChanged,
    TResult Function(PasswordTextChanged value)? passwordTextChanged,
    TResult Function(PasswordErrorChanged value)? passwordErrorChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterActionCopyWith<$Res> {
  factory $RegisterActionCopyWith(
          RegisterAction value, $Res Function(RegisterAction) then) =
      _$RegisterActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterActionCopyWithImpl<$Res>
    implements $RegisterActionCopyWith<$Res> {
  _$RegisterActionCopyWithImpl(this._value, this._then);

  final RegisterAction _value;
  // ignore: unused_field
  final $Res Function(RegisterAction) _then;
}

/// @nodoc
abstract class $NameTextChangedCopyWith<$Res> {
  factory $NameTextChangedCopyWith(
          NameTextChanged value, $Res Function(NameTextChanged) then) =
      _$NameTextChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$NameTextChangedCopyWithImpl<$Res>
    extends _$RegisterActionCopyWithImpl<$Res>
    implements $NameTextChangedCopyWith<$Res> {
  _$NameTextChangedCopyWithImpl(
      NameTextChanged _value, $Res Function(NameTextChanged) _then)
      : super(_value, (v) => _then(v as NameTextChanged));

  @override
  NameTextChanged get _value => super._value as NameTextChanged;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(NameTextChanged(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameTextChanged
    with DiagnosticableTreeMixin
    implements NameTextChanged {
  const _$NameTextChanged(this.name);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterAction.nameTextChanged(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterAction.nameTextChanged'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NameTextChanged &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  $NameTextChangedCopyWith<NameTextChanged> get copyWith =>
      _$NameTextChangedCopyWithImpl<NameTextChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameTextChanged,
    required TResult Function(String? nameError) nameErrorChanged,
    required TResult Function(String email) emailTextChanged,
    required TResult Function(String? emailError) emailErrorChanged,
    required TResult Function(String password) passwordTextChanged,
    required TResult Function(String? passwordError) passwordErrorChanged,
  }) {
    return nameTextChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name)? nameTextChanged,
    TResult Function(String? nameError)? nameErrorChanged,
    TResult Function(String email)? emailTextChanged,
    TResult Function(String? emailError)? emailErrorChanged,
    TResult Function(String password)? passwordTextChanged,
    TResult Function(String? passwordError)? passwordErrorChanged,
  }) {
    return nameTextChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameTextChanged,
    TResult Function(String? nameError)? nameErrorChanged,
    TResult Function(String email)? emailTextChanged,
    TResult Function(String? emailError)? emailErrorChanged,
    TResult Function(String password)? passwordTextChanged,
    TResult Function(String? passwordError)? passwordErrorChanged,
    required TResult orElse(),
  }) {
    if (nameTextChanged != null) {
      return nameTextChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameTextChanged value) nameTextChanged,
    required TResult Function(NameErrorChanged value) nameErrorChanged,
    required TResult Function(EmailTextChanged value) emailTextChanged,
    required TResult Function(EmailErrorChanged value) emailErrorChanged,
    required TResult Function(PasswordTextChanged value) passwordTextChanged,
    required TResult Function(PasswordErrorChanged value) passwordErrorChanged,
  }) {
    return nameTextChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NameTextChanged value)? nameTextChanged,
    TResult Function(NameErrorChanged value)? nameErrorChanged,
    TResult Function(EmailTextChanged value)? emailTextChanged,
    TResult Function(EmailErrorChanged value)? emailErrorChanged,
    TResult Function(PasswordTextChanged value)? passwordTextChanged,
    TResult Function(PasswordErrorChanged value)? passwordErrorChanged,
  }) {
    return nameTextChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameTextChanged value)? nameTextChanged,
    TResult Function(NameErrorChanged value)? nameErrorChanged,
    TResult Function(EmailTextChanged value)? emailTextChanged,
    TResult Function(EmailErrorChanged value)? emailErrorChanged,
    TResult Function(PasswordTextChanged value)? passwordTextChanged,
    TResult Function(PasswordErrorChanged value)? passwordErrorChanged,
    required TResult orElse(),
  }) {
    if (nameTextChanged != null) {
      return nameTextChanged(this);
    }
    return orElse();
  }
}

abstract class NameTextChanged implements RegisterAction {
  const factory NameTextChanged(String name) = _$NameTextChanged;

  String get name;
  @JsonKey(ignore: true)
  $NameTextChangedCopyWith<NameTextChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameErrorChangedCopyWith<$Res> {
  factory $NameErrorChangedCopyWith(
          NameErrorChanged value, $Res Function(NameErrorChanged) then) =
      _$NameErrorChangedCopyWithImpl<$Res>;
  $Res call({String? nameError});
}

/// @nodoc
class _$NameErrorChangedCopyWithImpl<$Res>
    extends _$RegisterActionCopyWithImpl<$Res>
    implements $NameErrorChangedCopyWith<$Res> {
  _$NameErrorChangedCopyWithImpl(
      NameErrorChanged _value, $Res Function(NameErrorChanged) _then)
      : super(_value, (v) => _then(v as NameErrorChanged));

  @override
  NameErrorChanged get _value => super._value as NameErrorChanged;

  @override
  $Res call({
    Object? nameError = freezed,
  }) {
    return _then(NameErrorChanged(
      nameError == freezed
          ? _value.nameError
          : nameError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NameErrorChanged
    with DiagnosticableTreeMixin
    implements NameErrorChanged {
  const _$NameErrorChanged(this.nameError);

  @override
  final String? nameError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterAction.nameErrorChanged(nameError: $nameError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterAction.nameErrorChanged'))
      ..add(DiagnosticsProperty('nameError', nameError));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NameErrorChanged &&
            const DeepCollectionEquality().equals(other.nameError, nameError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(nameError));

  @JsonKey(ignore: true)
  @override
  $NameErrorChangedCopyWith<NameErrorChanged> get copyWith =>
      _$NameErrorChangedCopyWithImpl<NameErrorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameTextChanged,
    required TResult Function(String? nameError) nameErrorChanged,
    required TResult Function(String email) emailTextChanged,
    required TResult Function(String? emailError) emailErrorChanged,
    required TResult Function(String password) passwordTextChanged,
    required TResult Function(String? passwordError) passwordErrorChanged,
  }) {
    return nameErrorChanged(nameError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name)? nameTextChanged,
    TResult Function(String? nameError)? nameErrorChanged,
    TResult Function(String email)? emailTextChanged,
    TResult Function(String? emailError)? emailErrorChanged,
    TResult Function(String password)? passwordTextChanged,
    TResult Function(String? passwordError)? passwordErrorChanged,
  }) {
    return nameErrorChanged?.call(nameError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameTextChanged,
    TResult Function(String? nameError)? nameErrorChanged,
    TResult Function(String email)? emailTextChanged,
    TResult Function(String? emailError)? emailErrorChanged,
    TResult Function(String password)? passwordTextChanged,
    TResult Function(String? passwordError)? passwordErrorChanged,
    required TResult orElse(),
  }) {
    if (nameErrorChanged != null) {
      return nameErrorChanged(nameError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameTextChanged value) nameTextChanged,
    required TResult Function(NameErrorChanged value) nameErrorChanged,
    required TResult Function(EmailTextChanged value) emailTextChanged,
    required TResult Function(EmailErrorChanged value) emailErrorChanged,
    required TResult Function(PasswordTextChanged value) passwordTextChanged,
    required TResult Function(PasswordErrorChanged value) passwordErrorChanged,
  }) {
    return nameErrorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NameTextChanged value)? nameTextChanged,
    TResult Function(NameErrorChanged value)? nameErrorChanged,
    TResult Function(EmailTextChanged value)? emailTextChanged,
    TResult Function(EmailErrorChanged value)? emailErrorChanged,
    TResult Function(PasswordTextChanged value)? passwordTextChanged,
    TResult Function(PasswordErrorChanged value)? passwordErrorChanged,
  }) {
    return nameErrorChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameTextChanged value)? nameTextChanged,
    TResult Function(NameErrorChanged value)? nameErrorChanged,
    TResult Function(EmailTextChanged value)? emailTextChanged,
    TResult Function(EmailErrorChanged value)? emailErrorChanged,
    TResult Function(PasswordTextChanged value)? passwordTextChanged,
    TResult Function(PasswordErrorChanged value)? passwordErrorChanged,
    required TResult orElse(),
  }) {
    if (nameErrorChanged != null) {
      return nameErrorChanged(this);
    }
    return orElse();
  }
}

abstract class NameErrorChanged implements RegisterAction {
  const factory NameErrorChanged(String? nameError) = _$NameErrorChanged;

  String? get nameError;
  @JsonKey(ignore: true)
  $NameErrorChangedCopyWith<NameErrorChanged> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$RegisterActionCopyWithImpl<$Res>
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
    return 'RegisterAction.emailTextChanged(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterAction.emailTextChanged'))
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
    required TResult Function(String name) nameTextChanged,
    required TResult Function(String? nameError) nameErrorChanged,
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
    TResult Function(String name)? nameTextChanged,
    TResult Function(String? nameError)? nameErrorChanged,
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
    TResult Function(String name)? nameTextChanged,
    TResult Function(String? nameError)? nameErrorChanged,
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
    required TResult Function(NameTextChanged value) nameTextChanged,
    required TResult Function(NameErrorChanged value) nameErrorChanged,
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
    TResult Function(NameTextChanged value)? nameTextChanged,
    TResult Function(NameErrorChanged value)? nameErrorChanged,
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
    TResult Function(NameTextChanged value)? nameTextChanged,
    TResult Function(NameErrorChanged value)? nameErrorChanged,
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

abstract class EmailTextChanged implements RegisterAction {
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
    extends _$RegisterActionCopyWithImpl<$Res>
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
    return 'RegisterAction.emailErrorChanged(emailError: $emailError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterAction.emailErrorChanged'))
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
    required TResult Function(String name) nameTextChanged,
    required TResult Function(String? nameError) nameErrorChanged,
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
    TResult Function(String name)? nameTextChanged,
    TResult Function(String? nameError)? nameErrorChanged,
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
    TResult Function(String name)? nameTextChanged,
    TResult Function(String? nameError)? nameErrorChanged,
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
    required TResult Function(NameTextChanged value) nameTextChanged,
    required TResult Function(NameErrorChanged value) nameErrorChanged,
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
    TResult Function(NameTextChanged value)? nameTextChanged,
    TResult Function(NameErrorChanged value)? nameErrorChanged,
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
    TResult Function(NameTextChanged value)? nameTextChanged,
    TResult Function(NameErrorChanged value)? nameErrorChanged,
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

abstract class EmailErrorChanged implements RegisterAction {
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
    extends _$RegisterActionCopyWithImpl<$Res>
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
    return 'RegisterAction.passwordTextChanged(password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterAction.passwordTextChanged'))
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
    required TResult Function(String name) nameTextChanged,
    required TResult Function(String? nameError) nameErrorChanged,
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
    TResult Function(String name)? nameTextChanged,
    TResult Function(String? nameError)? nameErrorChanged,
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
    TResult Function(String name)? nameTextChanged,
    TResult Function(String? nameError)? nameErrorChanged,
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
    required TResult Function(NameTextChanged value) nameTextChanged,
    required TResult Function(NameErrorChanged value) nameErrorChanged,
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
    TResult Function(NameTextChanged value)? nameTextChanged,
    TResult Function(NameErrorChanged value)? nameErrorChanged,
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
    TResult Function(NameTextChanged value)? nameTextChanged,
    TResult Function(NameErrorChanged value)? nameErrorChanged,
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

abstract class PasswordTextChanged implements RegisterAction {
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
    extends _$RegisterActionCopyWithImpl<$Res>
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
    return 'RegisterAction.passwordErrorChanged(passwordError: $passwordError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterAction.passwordErrorChanged'))
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
    required TResult Function(String name) nameTextChanged,
    required TResult Function(String? nameError) nameErrorChanged,
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
    TResult Function(String name)? nameTextChanged,
    TResult Function(String? nameError)? nameErrorChanged,
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
    TResult Function(String name)? nameTextChanged,
    TResult Function(String? nameError)? nameErrorChanged,
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
    required TResult Function(NameTextChanged value) nameTextChanged,
    required TResult Function(NameErrorChanged value) nameErrorChanged,
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
    TResult Function(NameTextChanged value)? nameTextChanged,
    TResult Function(NameErrorChanged value)? nameErrorChanged,
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
    TResult Function(NameTextChanged value)? nameTextChanged,
    TResult Function(NameErrorChanged value)? nameErrorChanged,
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

abstract class PasswordErrorChanged implements RegisterAction {
  const factory PasswordErrorChanged(String? passwordError) =
      _$PasswordErrorChanged;

  String? get passwordError;
  @JsonKey(ignore: true)
  $PasswordErrorChangedCopyWith<PasswordErrorChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RegisterStateTearOff {
  const _$RegisterStateTearOff();

  _RegisterState call(
      [String nameText = '',
      String emailText = '',
      String passwordText = '',
      Map<String, String?> inputErrors = const {}]) {
    return _RegisterState(
      nameText,
      emailText,
      passwordText,
      inputErrors,
    );
  }
}

/// @nodoc
const $RegisterState = _$RegisterStateTearOff();

/// @nodoc
mixin _$RegisterState {
  String get nameText => throw _privateConstructorUsedError;
  String get emailText => throw _privateConstructorUsedError;
  String get passwordText => throw _privateConstructorUsedError;
  Map<String, String?> get inputErrors => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
  $Res call(
      {String nameText,
      String emailText,
      String passwordText,
      Map<String, String?> inputErrors});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;

  @override
  $Res call({
    Object? nameText = freezed,
    Object? emailText = freezed,
    Object? passwordText = freezed,
    Object? inputErrors = freezed,
  }) {
    return _then(_value.copyWith(
      nameText: nameText == freezed
          ? _value.nameText
          : nameText // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(
          _RegisterState value, $Res Function(_RegisterState) then) =
      __$RegisterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String nameText,
      String emailText,
      String passwordText,
      Map<String, String?> inputErrors});
}

/// @nodoc
class __$RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(
      _RegisterState _value, $Res Function(_RegisterState) _then)
      : super(_value, (v) => _then(v as _RegisterState));

  @override
  _RegisterState get _value => super._value as _RegisterState;

  @override
  $Res call({
    Object? nameText = freezed,
    Object? emailText = freezed,
    Object? passwordText = freezed,
    Object? inputErrors = freezed,
  }) {
    return _then(_RegisterState(
      nameText == freezed
          ? _value.nameText
          : nameText // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$_RegisterState with DiagnosticableTreeMixin implements _RegisterState {
  const _$_RegisterState(
      [this.nameText = '',
      this.emailText = '',
      this.passwordText = '',
      this.inputErrors = const {}]);

  @JsonKey()
  @override
  final String nameText;
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
    return 'RegisterState(nameText: $nameText, emailText: $emailText, passwordText: $passwordText, inputErrors: $inputErrors)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterState'))
      ..add(DiagnosticsProperty('nameText', nameText))
      ..add(DiagnosticsProperty('emailText', emailText))
      ..add(DiagnosticsProperty('passwordText', passwordText))
      ..add(DiagnosticsProperty('inputErrors', inputErrors));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterState &&
            const DeepCollectionEquality().equals(other.nameText, nameText) &&
            const DeepCollectionEquality().equals(other.emailText, emailText) &&
            const DeepCollectionEquality()
                .equals(other.passwordText, passwordText) &&
            const DeepCollectionEquality()
                .equals(other.inputErrors, inputErrors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nameText),
      const DeepCollectionEquality().hash(emailText),
      const DeepCollectionEquality().hash(passwordText),
      const DeepCollectionEquality().hash(inputErrors));

  @JsonKey(ignore: true)
  @override
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      [String nameText,
      String emailText,
      String passwordText,
      Map<String, String?> inputErrors]) = _$_RegisterState;

  @override
  String get nameText;
  @override
  String get emailText;
  @override
  String get passwordText;
  @override
  Map<String, String?> get inputErrors;
  @override
  @JsonKey(ignore: true)
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

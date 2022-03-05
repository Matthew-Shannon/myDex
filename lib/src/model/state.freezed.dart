// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MyDexStateTearOff {
  const _$MyDexStateTearOff();

  _MyDexState call(
      {AuthState authState = const AuthState(),
      HomeState homeState = const HomeState(),
      SearchState searchState = const SearchState(),
      SettingsState settingsState = const SettingsState()}) {
    return _MyDexState(
      authState: authState,
      homeState: homeState,
      searchState: searchState,
      settingsState: settingsState,
    );
  }
}

/// @nodoc
const $MyDexState = _$MyDexStateTearOff();

/// @nodoc
mixin _$MyDexState {
  AuthState get authState => throw _privateConstructorUsedError;
  HomeState get homeState => throw _privateConstructorUsedError;
  SearchState get searchState => throw _privateConstructorUsedError;
  SettingsState get settingsState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyDexStateCopyWith<MyDexState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyDexStateCopyWith<$Res> {
  factory $MyDexStateCopyWith(
          MyDexState value, $Res Function(MyDexState) then) =
      _$MyDexStateCopyWithImpl<$Res>;
  $Res call(
      {AuthState authState,
      HomeState homeState,
      SearchState searchState,
      SettingsState settingsState});

  $AuthStateCopyWith<$Res> get authState;
  $HomeStateCopyWith<$Res> get homeState;
  $SearchStateCopyWith<$Res> get searchState;
  $SettingsStateCopyWith<$Res> get settingsState;
}

/// @nodoc
class _$MyDexStateCopyWithImpl<$Res> implements $MyDexStateCopyWith<$Res> {
  _$MyDexStateCopyWithImpl(this._value, this._then);

  final MyDexState _value;
  // ignore: unused_field
  final $Res Function(MyDexState) _then;

  @override
  $Res call({
    Object? authState = freezed,
    Object? homeState = freezed,
    Object? searchState = freezed,
    Object? settingsState = freezed,
  }) {
    return _then(_value.copyWith(
      authState: authState == freezed
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as AuthState,
      homeState: homeState == freezed
          ? _value.homeState
          : homeState // ignore: cast_nullable_to_non_nullable
              as HomeState,
      searchState: searchState == freezed
          ? _value.searchState
          : searchState // ignore: cast_nullable_to_non_nullable
              as SearchState,
      settingsState: settingsState == freezed
          ? _value.settingsState
          : settingsState // ignore: cast_nullable_to_non_nullable
              as SettingsState,
    ));
  }

  @override
  $AuthStateCopyWith<$Res> get authState {
    return $AuthStateCopyWith<$Res>(_value.authState, (value) {
      return _then(_value.copyWith(authState: value));
    });
  }

  @override
  $HomeStateCopyWith<$Res> get homeState {
    return $HomeStateCopyWith<$Res>(_value.homeState, (value) {
      return _then(_value.copyWith(homeState: value));
    });
  }

  @override
  $SearchStateCopyWith<$Res> get searchState {
    return $SearchStateCopyWith<$Res>(_value.searchState, (value) {
      return _then(_value.copyWith(searchState: value));
    });
  }

  @override
  $SettingsStateCopyWith<$Res> get settingsState {
    return $SettingsStateCopyWith<$Res>(_value.settingsState, (value) {
      return _then(_value.copyWith(settingsState: value));
    });
  }
}

/// @nodoc
abstract class _$MyDexStateCopyWith<$Res> implements $MyDexStateCopyWith<$Res> {
  factory _$MyDexStateCopyWith(
          _MyDexState value, $Res Function(_MyDexState) then) =
      __$MyDexStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {AuthState authState,
      HomeState homeState,
      SearchState searchState,
      SettingsState settingsState});

  @override
  $AuthStateCopyWith<$Res> get authState;
  @override
  $HomeStateCopyWith<$Res> get homeState;
  @override
  $SearchStateCopyWith<$Res> get searchState;
  @override
  $SettingsStateCopyWith<$Res> get settingsState;
}

/// @nodoc
class __$MyDexStateCopyWithImpl<$Res> extends _$MyDexStateCopyWithImpl<$Res>
    implements _$MyDexStateCopyWith<$Res> {
  __$MyDexStateCopyWithImpl(
      _MyDexState _value, $Res Function(_MyDexState) _then)
      : super(_value, (v) => _then(v as _MyDexState));

  @override
  _MyDexState get _value => super._value as _MyDexState;

  @override
  $Res call({
    Object? authState = freezed,
    Object? homeState = freezed,
    Object? searchState = freezed,
    Object? settingsState = freezed,
  }) {
    return _then(_MyDexState(
      authState: authState == freezed
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as AuthState,
      homeState: homeState == freezed
          ? _value.homeState
          : homeState // ignore: cast_nullable_to_non_nullable
              as HomeState,
      searchState: searchState == freezed
          ? _value.searchState
          : searchState // ignore: cast_nullable_to_non_nullable
              as SearchState,
      settingsState: settingsState == freezed
          ? _value.settingsState
          : settingsState // ignore: cast_nullable_to_non_nullable
              as SettingsState,
    ));
  }
}

/// @nodoc

class _$_MyDexState with DiagnosticableTreeMixin implements _MyDexState {
  const _$_MyDexState(
      {this.authState = const AuthState(),
      this.homeState = const HomeState(),
      this.searchState = const SearchState(),
      this.settingsState = const SettingsState()});

  @JsonKey()
  @override
  final AuthState authState;
  @JsonKey()
  @override
  final HomeState homeState;
  @JsonKey()
  @override
  final SearchState searchState;
  @JsonKey()
  @override
  final SettingsState settingsState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyDexState(authState: $authState, homeState: $homeState, searchState: $searchState, settingsState: $settingsState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyDexState'))
      ..add(DiagnosticsProperty('authState', authState))
      ..add(DiagnosticsProperty('homeState', homeState))
      ..add(DiagnosticsProperty('searchState', searchState))
      ..add(DiagnosticsProperty('settingsState', settingsState));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyDexState &&
            const DeepCollectionEquality().equals(other.authState, authState) &&
            const DeepCollectionEquality().equals(other.homeState, homeState) &&
            const DeepCollectionEquality()
                .equals(other.searchState, searchState) &&
            const DeepCollectionEquality()
                .equals(other.settingsState, settingsState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(authState),
      const DeepCollectionEquality().hash(homeState),
      const DeepCollectionEquality().hash(searchState),
      const DeepCollectionEquality().hash(settingsState));

  @JsonKey(ignore: true)
  @override
  _$MyDexStateCopyWith<_MyDexState> get copyWith =>
      __$MyDexStateCopyWithImpl<_MyDexState>(this, _$identity);
}

abstract class _MyDexState implements MyDexState {
  const factory _MyDexState(
      {AuthState authState,
      HomeState homeState,
      SearchState searchState,
      SettingsState settingsState}) = _$_MyDexState;

  @override
  AuthState get authState;
  @override
  HomeState get homeState;
  @override
  SearchState get searchState;
  @override
  SettingsState get settingsState;
  @override
  @JsonKey(ignore: true)
  _$MyDexStateCopyWith<_MyDexState> get copyWith =>
      throw _privateConstructorUsedError;
}

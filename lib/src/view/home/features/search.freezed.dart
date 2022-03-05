// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  _SearchState call(
      [List<Pair> pairs = const [],
      Pokemon pokemon = const Pokemon(),
      bool isSearching = false,
      bool isLoading = false]) {
    return _SearchState(
      pairs,
      pokemon,
      isSearching,
      isLoading,
    );
  }
}

/// @nodoc
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  List<Pair> get pairs => throw _privateConstructorUsedError;
  Pokemon get pokemon => throw _privateConstructorUsedError;
  bool get isSearching => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {List<Pair> pairs, Pokemon pokemon, bool isSearching, bool isLoading});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object? pairs = freezed,
    Object? pokemon = freezed,
    Object? isSearching = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      pairs: pairs == freezed
          ? _value.pairs
          : pairs // ignore: cast_nullable_to_non_nullable
              as List<Pair>,
      pokemon: pokemon == freezed
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as Pokemon,
      isSearching: isSearching == freezed
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(
          _SearchState value, $Res Function(_SearchState) then) =
      __$SearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Pair> pairs, Pokemon pokemon, bool isSearching, bool isLoading});
}

/// @nodoc
class __$SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(
      _SearchState _value, $Res Function(_SearchState) _then)
      : super(_value, (v) => _then(v as _SearchState));

  @override
  _SearchState get _value => super._value as _SearchState;

  @override
  $Res call({
    Object? pairs = freezed,
    Object? pokemon = freezed,
    Object? isSearching = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_SearchState(
      pairs == freezed
          ? _value.pairs
          : pairs // ignore: cast_nullable_to_non_nullable
              as List<Pair>,
      pokemon == freezed
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as Pokemon,
      isSearching == freezed
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SearchState with DiagnosticableTreeMixin implements _SearchState {
  const _$_SearchState(
      [this.pairs = const [],
      this.pokemon = const Pokemon(),
      this.isSearching = false,
      this.isLoading = false]);

  @JsonKey()
  @override
  final List<Pair> pairs;
  @JsonKey()
  @override
  final Pokemon pokemon;
  @JsonKey()
  @override
  final bool isSearching;
  @JsonKey()
  @override
  final bool isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState(pairs: $pairs, pokemon: $pokemon, isSearching: $isSearching, isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchState'))
      ..add(DiagnosticsProperty('pairs', pairs))
      ..add(DiagnosticsProperty('pokemon', pokemon))
      ..add(DiagnosticsProperty('isSearching', isSearching))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchState &&
            const DeepCollectionEquality().equals(other.pairs, pairs) &&
            const DeepCollectionEquality().equals(other.pokemon, pokemon) &&
            const DeepCollectionEquality()
                .equals(other.isSearching, isSearching) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pairs),
      const DeepCollectionEquality().hash(pokemon),
      const DeepCollectionEquality().hash(isSearching),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      [List<Pair> pairs,
      Pokemon pokemon,
      bool isSearching,
      bool isLoading]) = _$_SearchState;

  @override
  List<Pair> get pairs;
  @override
  Pokemon get pokemon;
  @override
  bool get isSearching;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchActionTearOff {
  const _$SearchActionTearOff();

  IsLoading isLoading(bool status) {
    return IsLoading(
      status,
    );
  }

  IsSearching isSearching(bool status) {
    return IsSearching(
      status,
    );
  }

  PairsChanged pairsChanged(List<Pair> pairs) {
    return PairsChanged(
      pairs,
    );
  }

  PokemonSelected pokemonSelected(Pokemon pokemons) {
    return PokemonSelected(
      pokemons,
    );
  }
}

/// @nodoc
const $SearchAction = _$SearchActionTearOff();

/// @nodoc
mixin _$SearchAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) isLoading,
    required TResult Function(bool status) isSearching,
    required TResult Function(List<Pair> pairs) pairsChanged,
    required TResult Function(Pokemon pokemons) pokemonSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool status)? isLoading,
    TResult Function(bool status)? isSearching,
    TResult Function(List<Pair> pairs)? pairsChanged,
    TResult Function(Pokemon pokemons)? pokemonSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? isLoading,
    TResult Function(bool status)? isSearching,
    TResult Function(List<Pair> pairs)? pairsChanged,
    TResult Function(Pokemon pokemons)? pokemonSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsLoading value) isLoading,
    required TResult Function(IsSearching value) isSearching,
    required TResult Function(PairsChanged value) pairsChanged,
    required TResult Function(PokemonSelected value) pokemonSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IsLoading value)? isLoading,
    TResult Function(IsSearching value)? isSearching,
    TResult Function(PairsChanged value)? pairsChanged,
    TResult Function(PokemonSelected value)? pokemonSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsLoading value)? isLoading,
    TResult Function(IsSearching value)? isSearching,
    TResult Function(PairsChanged value)? pairsChanged,
    TResult Function(PokemonSelected value)? pokemonSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchActionCopyWith<$Res> {
  factory $SearchActionCopyWith(
          SearchAction value, $Res Function(SearchAction) then) =
      _$SearchActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchActionCopyWithImpl<$Res> implements $SearchActionCopyWith<$Res> {
  _$SearchActionCopyWithImpl(this._value, this._then);

  final SearchAction _value;
  // ignore: unused_field
  final $Res Function(SearchAction) _then;
}

/// @nodoc
abstract class $IsLoadingCopyWith<$Res> {
  factory $IsLoadingCopyWith(IsLoading value, $Res Function(IsLoading) then) =
      _$IsLoadingCopyWithImpl<$Res>;
  $Res call({bool status});
}

/// @nodoc
class _$IsLoadingCopyWithImpl<$Res> extends _$SearchActionCopyWithImpl<$Res>
    implements $IsLoadingCopyWith<$Res> {
  _$IsLoadingCopyWithImpl(IsLoading _value, $Res Function(IsLoading) _then)
      : super(_value, (v) => _then(v as IsLoading));

  @override
  IsLoading get _value => super._value as IsLoading;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(IsLoading(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IsLoading with DiagnosticableTreeMixin implements IsLoading {
  const _$IsLoading(this.status);

  @override
  final bool status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchAction.isLoading(status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchAction.isLoading'))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IsLoading &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  $IsLoadingCopyWith<IsLoading> get copyWith =>
      _$IsLoadingCopyWithImpl<IsLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) isLoading,
    required TResult Function(bool status) isSearching,
    required TResult Function(List<Pair> pairs) pairsChanged,
    required TResult Function(Pokemon pokemons) pokemonSelected,
  }) {
    return isLoading(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool status)? isLoading,
    TResult Function(bool status)? isSearching,
    TResult Function(List<Pair> pairs)? pairsChanged,
    TResult Function(Pokemon pokemons)? pokemonSelected,
  }) {
    return isLoading?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? isLoading,
    TResult Function(bool status)? isSearching,
    TResult Function(List<Pair> pairs)? pairsChanged,
    TResult Function(Pokemon pokemons)? pokemonSelected,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsLoading value) isLoading,
    required TResult Function(IsSearching value) isSearching,
    required TResult Function(PairsChanged value) pairsChanged,
    required TResult Function(PokemonSelected value) pokemonSelected,
  }) {
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IsLoading value)? isLoading,
    TResult Function(IsSearching value)? isSearching,
    TResult Function(PairsChanged value)? pairsChanged,
    TResult Function(PokemonSelected value)? pokemonSelected,
  }) {
    return isLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsLoading value)? isLoading,
    TResult Function(IsSearching value)? isSearching,
    TResult Function(PairsChanged value)? pairsChanged,
    TResult Function(PokemonSelected value)? pokemonSelected,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class IsLoading implements SearchAction {
  const factory IsLoading(bool status) = _$IsLoading;

  bool get status;
  @JsonKey(ignore: true)
  $IsLoadingCopyWith<IsLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsSearchingCopyWith<$Res> {
  factory $IsSearchingCopyWith(
          IsSearching value, $Res Function(IsSearching) then) =
      _$IsSearchingCopyWithImpl<$Res>;
  $Res call({bool status});
}

/// @nodoc
class _$IsSearchingCopyWithImpl<$Res> extends _$SearchActionCopyWithImpl<$Res>
    implements $IsSearchingCopyWith<$Res> {
  _$IsSearchingCopyWithImpl(
      IsSearching _value, $Res Function(IsSearching) _then)
      : super(_value, (v) => _then(v as IsSearching));

  @override
  IsSearching get _value => super._value as IsSearching;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(IsSearching(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IsSearching with DiagnosticableTreeMixin implements IsSearching {
  const _$IsSearching(this.status);

  @override
  final bool status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchAction.isSearching(status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchAction.isSearching'))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IsSearching &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  $IsSearchingCopyWith<IsSearching> get copyWith =>
      _$IsSearchingCopyWithImpl<IsSearching>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) isLoading,
    required TResult Function(bool status) isSearching,
    required TResult Function(List<Pair> pairs) pairsChanged,
    required TResult Function(Pokemon pokemons) pokemonSelected,
  }) {
    return isSearching(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool status)? isLoading,
    TResult Function(bool status)? isSearching,
    TResult Function(List<Pair> pairs)? pairsChanged,
    TResult Function(Pokemon pokemons)? pokemonSelected,
  }) {
    return isSearching?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? isLoading,
    TResult Function(bool status)? isSearching,
    TResult Function(List<Pair> pairs)? pairsChanged,
    TResult Function(Pokemon pokemons)? pokemonSelected,
    required TResult orElse(),
  }) {
    if (isSearching != null) {
      return isSearching(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsLoading value) isLoading,
    required TResult Function(IsSearching value) isSearching,
    required TResult Function(PairsChanged value) pairsChanged,
    required TResult Function(PokemonSelected value) pokemonSelected,
  }) {
    return isSearching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IsLoading value)? isLoading,
    TResult Function(IsSearching value)? isSearching,
    TResult Function(PairsChanged value)? pairsChanged,
    TResult Function(PokemonSelected value)? pokemonSelected,
  }) {
    return isSearching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsLoading value)? isLoading,
    TResult Function(IsSearching value)? isSearching,
    TResult Function(PairsChanged value)? pairsChanged,
    TResult Function(PokemonSelected value)? pokemonSelected,
    required TResult orElse(),
  }) {
    if (isSearching != null) {
      return isSearching(this);
    }
    return orElse();
  }
}

abstract class IsSearching implements SearchAction {
  const factory IsSearching(bool status) = _$IsSearching;

  bool get status;
  @JsonKey(ignore: true)
  $IsSearchingCopyWith<IsSearching> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PairsChangedCopyWith<$Res> {
  factory $PairsChangedCopyWith(
          PairsChanged value, $Res Function(PairsChanged) then) =
      _$PairsChangedCopyWithImpl<$Res>;
  $Res call({List<Pair> pairs});
}

/// @nodoc
class _$PairsChangedCopyWithImpl<$Res> extends _$SearchActionCopyWithImpl<$Res>
    implements $PairsChangedCopyWith<$Res> {
  _$PairsChangedCopyWithImpl(
      PairsChanged _value, $Res Function(PairsChanged) _then)
      : super(_value, (v) => _then(v as PairsChanged));

  @override
  PairsChanged get _value => super._value as PairsChanged;

  @override
  $Res call({
    Object? pairs = freezed,
  }) {
    return _then(PairsChanged(
      pairs == freezed
          ? _value.pairs
          : pairs // ignore: cast_nullable_to_non_nullable
              as List<Pair>,
    ));
  }
}

/// @nodoc

class _$PairsChanged with DiagnosticableTreeMixin implements PairsChanged {
  const _$PairsChanged(this.pairs);

  @override
  final List<Pair> pairs;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchAction.pairsChanged(pairs: $pairs)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchAction.pairsChanged'))
      ..add(DiagnosticsProperty('pairs', pairs));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PairsChanged &&
            const DeepCollectionEquality().equals(other.pairs, pairs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pairs));

  @JsonKey(ignore: true)
  @override
  $PairsChangedCopyWith<PairsChanged> get copyWith =>
      _$PairsChangedCopyWithImpl<PairsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) isLoading,
    required TResult Function(bool status) isSearching,
    required TResult Function(List<Pair> pairs) pairsChanged,
    required TResult Function(Pokemon pokemons) pokemonSelected,
  }) {
    return pairsChanged(pairs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool status)? isLoading,
    TResult Function(bool status)? isSearching,
    TResult Function(List<Pair> pairs)? pairsChanged,
    TResult Function(Pokemon pokemons)? pokemonSelected,
  }) {
    return pairsChanged?.call(pairs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? isLoading,
    TResult Function(bool status)? isSearching,
    TResult Function(List<Pair> pairs)? pairsChanged,
    TResult Function(Pokemon pokemons)? pokemonSelected,
    required TResult orElse(),
  }) {
    if (pairsChanged != null) {
      return pairsChanged(pairs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsLoading value) isLoading,
    required TResult Function(IsSearching value) isSearching,
    required TResult Function(PairsChanged value) pairsChanged,
    required TResult Function(PokemonSelected value) pokemonSelected,
  }) {
    return pairsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IsLoading value)? isLoading,
    TResult Function(IsSearching value)? isSearching,
    TResult Function(PairsChanged value)? pairsChanged,
    TResult Function(PokemonSelected value)? pokemonSelected,
  }) {
    return pairsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsLoading value)? isLoading,
    TResult Function(IsSearching value)? isSearching,
    TResult Function(PairsChanged value)? pairsChanged,
    TResult Function(PokemonSelected value)? pokemonSelected,
    required TResult orElse(),
  }) {
    if (pairsChanged != null) {
      return pairsChanged(this);
    }
    return orElse();
  }
}

abstract class PairsChanged implements SearchAction {
  const factory PairsChanged(List<Pair> pairs) = _$PairsChanged;

  List<Pair> get pairs;
  @JsonKey(ignore: true)
  $PairsChangedCopyWith<PairsChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSelectedCopyWith<$Res> {
  factory $PokemonSelectedCopyWith(
          PokemonSelected value, $Res Function(PokemonSelected) then) =
      _$PokemonSelectedCopyWithImpl<$Res>;
  $Res call({Pokemon pokemons});
}

/// @nodoc
class _$PokemonSelectedCopyWithImpl<$Res>
    extends _$SearchActionCopyWithImpl<$Res>
    implements $PokemonSelectedCopyWith<$Res> {
  _$PokemonSelectedCopyWithImpl(
      PokemonSelected _value, $Res Function(PokemonSelected) _then)
      : super(_value, (v) => _then(v as PokemonSelected));

  @override
  PokemonSelected get _value => super._value as PokemonSelected;

  @override
  $Res call({
    Object? pokemons = freezed,
  }) {
    return _then(PokemonSelected(
      pokemons == freezed
          ? _value.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as Pokemon,
    ));
  }
}

/// @nodoc

class _$PokemonSelected
    with DiagnosticableTreeMixin
    implements PokemonSelected {
  const _$PokemonSelected(this.pokemons);

  @override
  final Pokemon pokemons;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchAction.pokemonSelected(pokemons: $pokemons)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchAction.pokemonSelected'))
      ..add(DiagnosticsProperty('pokemons', pokemons));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonSelected &&
            const DeepCollectionEquality().equals(other.pokemons, pokemons));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pokemons));

  @JsonKey(ignore: true)
  @override
  $PokemonSelectedCopyWith<PokemonSelected> get copyWith =>
      _$PokemonSelectedCopyWithImpl<PokemonSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) isLoading,
    required TResult Function(bool status) isSearching,
    required TResult Function(List<Pair> pairs) pairsChanged,
    required TResult Function(Pokemon pokemons) pokemonSelected,
  }) {
    return pokemonSelected(pokemons);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool status)? isLoading,
    TResult Function(bool status)? isSearching,
    TResult Function(List<Pair> pairs)? pairsChanged,
    TResult Function(Pokemon pokemons)? pokemonSelected,
  }) {
    return pokemonSelected?.call(pokemons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? isLoading,
    TResult Function(bool status)? isSearching,
    TResult Function(List<Pair> pairs)? pairsChanged,
    TResult Function(Pokemon pokemons)? pokemonSelected,
    required TResult orElse(),
  }) {
    if (pokemonSelected != null) {
      return pokemonSelected(pokemons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsLoading value) isLoading,
    required TResult Function(IsSearching value) isSearching,
    required TResult Function(PairsChanged value) pairsChanged,
    required TResult Function(PokemonSelected value) pokemonSelected,
  }) {
    return pokemonSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IsLoading value)? isLoading,
    TResult Function(IsSearching value)? isSearching,
    TResult Function(PairsChanged value)? pairsChanged,
    TResult Function(PokemonSelected value)? pokemonSelected,
  }) {
    return pokemonSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsLoading value)? isLoading,
    TResult Function(IsSearching value)? isSearching,
    TResult Function(PairsChanged value)? pairsChanged,
    TResult Function(PokemonSelected value)? pokemonSelected,
    required TResult orElse(),
  }) {
    if (pokemonSelected != null) {
      return pokemonSelected(this);
    }
    return orElse();
  }
}

abstract class PokemonSelected implements SearchAction {
  const factory PokemonSelected(Pokemon pokemons) = _$PokemonSelected;

  Pokemon get pokemons;
  @JsonKey(ignore: true)
  $PokemonSelectedCopyWith<PokemonSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

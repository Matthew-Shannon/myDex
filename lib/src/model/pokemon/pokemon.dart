import 'package:autoequal/autoequal.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../core/const.dart';
import '../../core/types.dart';
import '../../service/repo.dart';
import 'sprite.dart';

part 'pokemon.g.dart';

@entity
@autoequalMixin
@JsonSerializable()
@SpriteRemoteConverter()
class Pokemon extends Equatable with _$PokemonAutoequalMixin {
  @primaryKey
  final int id;
  final String name;
  final int height;
  final int weight;
  final int order;
  final int base_experience;
  final Sprite sprites;

  const Pokemon({
    this.id = 0,
    this.name = '',
    this.height = 0,
    this.weight = 0,
    this.order = 0,
    this.base_experience = 0,
    this.sprites = const Sprite(),
  });

  factory Pokemon.fromJson(JSON json) => _$PokemonFromJson(json);

  JSON toJson() => _$PokemonToJson(this);
}

@dao
abstract class PokemonLocal extends BaseLocal<Pokemon> {
  @Query('SELECT * FROM Pokemon')
  Future<List<Pokemon>> doGetAll();

  @Query('SELECT * FROM Pokemon WHERE id = :query OR name = :query')
  Future<Pokemon?> doGet(String query);
}

class PokemonRepo extends BaseRepo<Pokemon> {
  final Dio remote;
  final PokemonLocal local;
  PokemonRepo(this.local, this.remote) : super(local, remote);

  @override
  Future<Pokemon> doGet(String query) => Future.any([
        //local.doGet(query).then((_) => _ ?? const Pokemon.empty()),
        _doGet(query),
      ]);

  @override
  Future<List<Pokemon>> doGetAll() => Future.any([
        local.doGetAll(),
        //remote.doGetAll().then(onCacheAll),
      ]);

  Future<Pokemon> _doGet(String query) => remote //
      .get<JSON>(Const.pokeBaseUrl + 'pokemon/$query')
      .then((_) => Pokemon.fromJson(_.data ?? {}));
}

class PokemonVM {
  final Pokemon pokemon;
  final SpriteVM sprites;
  const PokemonVM(this.pokemon, this.sprites);
  factory PokemonVM.def(Pokemon pokemon) => PokemonVM(pokemon, SpriteVM(pokemon.sprites));

  bool isNotEmpty() => pokemon != const Pokemon();
  String id() => 'Id: ${pokemon.id}';
  String name() => 'Name: ${pokemon.name}';
  String order() => 'Order: ${pokemon.order}';
  String height() => 'Height: ${pokemon.height}';
  String weight() => 'Weight: ${pokemon.weight}';
  String baseExp() => 'BaseExp: ${pokemon.base_experience}';

  List<String> fields() => [id(), name(), order(), height(), weight(), baseExp()];
}

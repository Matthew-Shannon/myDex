import 'package:autoequal/autoequal.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../core/const.dart';
import '../../core/types.dart';
import '../../service/repo.dart';

part 'pair.g.dart';

@entity
@autoequalMixin
@JsonSerializable()
class Pair extends Equatable with _$PairAutoequalMixin {
  @primaryKey
  final int id;
  final String name;
  final String url;
  const Pair({this.id = 0, this.name = '', this.url = ''});

  factory Pair.fromJson(JSON json) => _$PairFromJson(json);

  JSON toJson() => _$PairToJson(this);
}

@dao
abstract class PairLocal extends BaseLocal<Pair> {
  @Query('SELECT * FROM Pair')
  Future<List<Pair>> doGetAll();

  @Query('SELECT * FROM Pair WHERE id = :query OR name = :query')
  Future<Pair?> doGet(String query);
}

class PairRepo extends BaseRepo<Pair> {
  final Dio remote;
  final PairLocal local;
  PairRepo(this.local, this.remote) : super(local, remote);

  @override
  Future<Pair> doGet(String query) => Future.any([
        local.doGet(query).then((_) => _ ?? const Pair()),
        _doGetAll().then((xs) => xs.firstWhere((_) => _.name == query, orElse: Pair.new)).then(doCache),
      ]);

  @override
  Future<List<Pair>> doGetAll() => Future.any([
        local.doGetAll(),
        _doGetAll().then(doCacheAll),
      ]);

  Future<List<Pair>> _doGetAll() => remote
      .get<JSON>(Const.pokeBaseUrl + 'pokemon/?limit=898') //
      .then((res) => List<JSON>.from(res.data?['results'] ?? {}))
      .then((xs) => xs.map((_) => {..._, 'id': withID(_)}).map(Pair.fromJson).toList());

  static int withID(JSON data) => int.parse((data['url'] as String) //
      .replaceAll(Const.pokeDataUrl, '')
      .split('/')
      .first);
}

class PairVM {
  final Pair pair;
  const PairVM(this.pair);

  String title() => pair.name + ' (${pair.id}';
}

import 'dart:convert';

import 'package:autoequal/autoequal.dart';
import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../core/const.dart';
import '../../core/types.dart';

part 'sprite.g.dart';

@autoequalMixin
@JsonSerializable()
class Sprite extends Equatable with _$SpriteAutoequalMixin {
  final String? back_default;
  final String? back_female;
  final String? back_shiny;
  final String? back_shiny_female;
  final String? front_default;
  final String? front_female;
  final String? front_shiny;
  final String? front_shiny_female;
  const Sprite({
    this.back_default = null,
    this.back_female = null,
    this.back_shiny = null,
    this.back_shiny_female = null,
    this.front_default = null,
    this.front_female = null,
    this.front_shiny = null,
    this.front_shiny_female = null,
  });

  factory Sprite.fromJson(JSON json) => _$SpriteFromJson(json);

  JSON toJson() => _$SpriteToJson(this);
}

class SpriteLocalConverter extends TypeConverter<Sprite, String> {
  @override
  Sprite decode(String json) => jsonDecode(json);

  @override
  String encode(Sprite sprite) => jsonEncode(sprite.toJson());
}

class SpriteRemoteConverter implements JsonConverter<Sprite, JSON> {
  const SpriteRemoteConverter();

  @override
  Sprite fromJson(JSON json) => Sprite.fromJson(json);

  JSON toJson(Sprite sprite) => sprite.toJson();
}

// @dao
//
// abstract class SpriteLocal extends BaseLocal<Sprite> {
//   @Query('SELECT * FROM Sprite')
//   Future<List<Sprite>> doGetAll();
//
//   @Query('SELECT * FROM Sprite WHERE id = :query')
//   Future<Sprite?> doGet(String query);
// }

class SpriteVM {
  final Sprite sprites;
  const SpriteVM(this.sprites);

  String frontSprite() => sprites.front_default ?? sprites.front_female ?? Const.defImage;
  String backSprite() => sprites.back_default ?? sprites.back_female ?? Const.defImage;
  String frontShinySprite() => sprites.front_shiny ?? sprites.front_shiny_female ?? Const.defImage;
  String backShinySprite() => sprites.back_shiny ?? sprites.back_shiny_female ?? Const.defImage;

  List<String> normal() => [frontSprite(), backSprite()];

  List<String> shiny() => [frontShinySprite(), backShinySprite()];
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// AutoequalGenerator
// **************************************************************************

mixin _$PokemonAutoequalMixin on Equatable {
  @override
  List<Object?> get props =>
      _$PokemonAutoequal(this as Pokemon)._autoequalProps;
}

extension _$PokemonAutoequal on Pokemon {
  List<Object?> get _autoequalProps =>
      [id, name, height, weight, order, base_experience, sprites];
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pokemon _$PokemonFromJson(Map<String, dynamic> json) => Pokemon(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      height: json['height'] as int? ?? 0,
      weight: json['weight'] as int? ?? 0,
      order: json['order'] as int? ?? 0,
      base_experience: json['base_experience'] as int? ?? 0,
      sprites: json['sprites'] == null
          ? const Sprite()
          : const SpriteRemoteConverter()
              .fromJson(json['sprites'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonToJson(Pokemon instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'height': instance.height,
      'weight': instance.weight,
      'order': instance.order,
      'base_experience': instance.base_experience,
      'sprites': const SpriteRemoteConverter().toJson(instance.sprites),
    };

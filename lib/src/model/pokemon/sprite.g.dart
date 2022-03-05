// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sprite.dart';

// **************************************************************************
// AutoequalGenerator
// **************************************************************************

mixin _$SpriteAutoequalMixin on Equatable {
  @override
  List<Object?> get props => _$SpriteAutoequal(this as Sprite)._autoequalProps;
}

extension _$SpriteAutoequal on Sprite {
  List<Object?> get _autoequalProps => [
        back_default,
        back_female,
        back_shiny,
        back_shiny_female,
        front_default,
        front_female,
        front_shiny,
        front_shiny_female
      ];
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sprite _$SpriteFromJson(Map<String, dynamic> json) => Sprite(
      back_default: json['back_default'] as String? ?? null,
      back_female: json['back_female'] as String? ?? null,
      back_shiny: json['back_shiny'] as String? ?? null,
      back_shiny_female: json['back_shiny_female'] as String? ?? null,
      front_default: json['front_default'] as String? ?? null,
      front_female: json['front_female'] as String? ?? null,
      front_shiny: json['front_shiny'] as String? ?? null,
      front_shiny_female: json['front_shiny_female'] as String? ?? null,
    );

Map<String, dynamic> _$SpriteToJson(Sprite instance) => <String, dynamic>{
      'back_default': instance.back_default,
      'back_female': instance.back_female,
      'back_shiny': instance.back_shiny,
      'back_shiny_female': instance.back_shiny_female,
      'front_default': instance.front_default,
      'front_female': instance.front_female,
      'front_shiny': instance.front_shiny,
      'front_shiny_female': instance.front_shiny_female,
    };

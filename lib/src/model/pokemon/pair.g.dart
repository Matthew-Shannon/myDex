// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pair.dart';

// **************************************************************************
// AutoequalGenerator
// **************************************************************************

mixin _$PairAutoequalMixin on Equatable {
  @override
  List<Object?> get props => _$PairAutoequal(this as Pair)._autoequalProps;
}

extension _$PairAutoequal on Pair {
  List<Object?> get _autoequalProps => [id, name, url];
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pair _$PairFromJson(Map<String, dynamic> json) => Pair(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      url: json['url'] as String? ?? '',
    );

Map<String, dynamic> _$PairToJson(Pair instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
    };

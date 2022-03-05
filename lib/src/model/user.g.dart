// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// AutoequalGenerator
// **************************************************************************

mixin _$UserAutoequalMixin on Equatable {
  @override
  List<Object?> get props => _$UserAutoequal(this as User)._autoequalProps;
}

extension _$UserAutoequal on User {
  List<Object?> get _autoequalProps => [id, name, email, password];
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
    };

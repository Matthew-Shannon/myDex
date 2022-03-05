import 'package:autoequal/autoequal.dart';
import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

import '../core/types.dart';
import '../service/repo.dart';

part 'user.g.dart';

@entity
@autoequalMixin
@JsonSerializable()
class User extends Equatable with _$UserAutoequalMixin {
  @PrimaryKey(autoGenerate: true)
  final int id;
  final String name;
  final String email;
  final String password;

  const User({
    this.id = 0,
    this.name = '',
    this.email = '',
    this.password = '',
  });

  factory User.fromJson(JSON json) => _$UserFromJson(json);

  JSON toJson() => _$UserToJson(this);
}

abstract class IUserRepo {
  Future<void> doInsert(String name, String email, String password);
  Future<List<User>> doGetAll();
  Future<User> doGet(int id);
  Future<User> doGetByEmail(String email);
}

@dao
abstract class UserLocal extends BaseLocal<User> {
  @Query('SELECT * FROM User')
  Future<List<User>> onGetAll();

  @Query('SELECT * FROM User WHERE id = :id')
  Future<User?> onGet(int id);
}

class UserRepo implements IUserRepo {
  final UserLocal local;
  UserRepo(this.local);

  @override
  Future<void> doInsert(String name, String email, String password) => //
      local.onInsert([User(id: 1, name: name, email: email, password: password)]);

  @override
  Future<List<User>> doGetAll() => //
      local.onGetAll();

  @override
  Future<User> doGet(int id) => local //
      .onGet(id)
      .then((_) => _ ?? const User());

  @override
  Future<User> doGetByEmail(String email) => doGetAll() //
      .then((xs) => xs.firstWhere((_) => _.email == email, orElse: () => const User())); //

}

class UserVM {
  final User owner;
  const UserVM(this.owner);

  String name() => 'Name: ${owner.name}';
  String email() => 'Email: ${owner.email}';
  String password() => 'Password: ${owner.password}';
  List<String> fields() => [name(), email(), password()];
}

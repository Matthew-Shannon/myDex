// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  PokemonLocal? _pokemonLocalInstance;

  PairLocal? _pairLocalInstance;

  UserLocal? _userLocalInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback? callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `User` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT NOT NULL, `email` TEXT NOT NULL, `password` TEXT NOT NULL)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Pokemon` (`id` INTEGER NOT NULL, `name` TEXT NOT NULL, `height` INTEGER NOT NULL, `weight` INTEGER NOT NULL, `order` INTEGER NOT NULL, `base_experience` INTEGER NOT NULL, `sprites` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Pair` (`id` INTEGER NOT NULL, `name` TEXT NOT NULL, `url` TEXT NOT NULL, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  PokemonLocal get pokemonLocal {
    return _pokemonLocalInstance ??= _$PokemonLocal(database, changeListener);
  }

  @override
  PairLocal get pairLocal {
    return _pairLocalInstance ??= _$PairLocal(database, changeListener);
  }

  @override
  UserLocal get userLocal {
    return _userLocalInstance ??= _$UserLocal(database, changeListener);
  }
}

class _$PokemonLocal extends PokemonLocal {
  _$PokemonLocal(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _pokemonInsertionAdapter = InsertionAdapter(
            database,
            'Pokemon',
            (Pokemon item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'height': item.height,
                  'weight': item.weight,
                  'order': item.order,
                  'base_experience': item.base_experience,
                  'sprites': _spriteLocalConverter.encode(item.sprites)
                }),
        _pokemonUpdateAdapter = UpdateAdapter(
            database,
            'Pokemon',
            ['id'],
            (Pokemon item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'height': item.height,
                  'weight': item.weight,
                  'order': item.order,
                  'base_experience': item.base_experience,
                  'sprites': _spriteLocalConverter.encode(item.sprites)
                }),
        _pokemonDeletionAdapter = DeletionAdapter(
            database,
            'Pokemon',
            ['id'],
            (Pokemon item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'height': item.height,
                  'weight': item.weight,
                  'order': item.order,
                  'base_experience': item.base_experience,
                  'sprites': _spriteLocalConverter.encode(item.sprites)
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Pokemon> _pokemonInsertionAdapter;

  final UpdateAdapter<Pokemon> _pokemonUpdateAdapter;

  final DeletionAdapter<Pokemon> _pokemonDeletionAdapter;

  @override
  Future<List<Pokemon>> doGetAll() async {
    return _queryAdapter.queryList('SELECT * FROM Pokemon',
        mapper: (Map<String, Object?> row) => Pokemon(
            id: row['id'] as int,
            name: row['name'] as String,
            height: row['height'] as int,
            weight: row['weight'] as int,
            order: row['order'] as int,
            base_experience: row['base_experience'] as int,
            sprites: _spriteLocalConverter.decode(row['sprites'] as String)));
  }

  @override
  Future<Pokemon?> doGet(String query) async {
    return _queryAdapter.query(
        'SELECT * FROM Pokemon WHERE id = ?1 OR name = ?1',
        mapper: (Map<String, Object?> row) => Pokemon(
            id: row['id'] as int,
            name: row['name'] as String,
            height: row['height'] as int,
            weight: row['weight'] as int,
            order: row['order'] as int,
            base_experience: row['base_experience'] as int,
            sprites: _spriteLocalConverter.decode(row['sprites'] as String)),
        arguments: [query]);
  }

  @override
  Future<void> onInsert(List<Pokemon> items) async {
    await _pokemonInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> onUpdate(List<Pokemon> items) async {
    await _pokemonUpdateAdapter.updateList(items, OnConflictStrategy.replace);
  }

  @override
  Future<void> onDelete(List<Pokemon> items) async {
    await _pokemonDeletionAdapter.deleteList(items);
  }
}

class _$PairLocal extends PairLocal {
  _$PairLocal(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _pairInsertionAdapter = InsertionAdapter(
            database,
            'Pair',
            (Pair item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'url': item.url
                }),
        _pairUpdateAdapter = UpdateAdapter(
            database,
            'Pair',
            ['id'],
            (Pair item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'url': item.url
                }),
        _pairDeletionAdapter = DeletionAdapter(
            database,
            'Pair',
            ['id'],
            (Pair item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'url': item.url
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Pair> _pairInsertionAdapter;

  final UpdateAdapter<Pair> _pairUpdateAdapter;

  final DeletionAdapter<Pair> _pairDeletionAdapter;

  @override
  Future<List<Pair>> doGetAll() async {
    return _queryAdapter.queryList('SELECT * FROM Pair',
        mapper: (Map<String, Object?> row) => Pair(
            id: row['id'] as int,
            name: row['name'] as String,
            url: row['url'] as String));
  }

  @override
  Future<Pair?> doGet(String query) async {
    return _queryAdapter.query('SELECT * FROM Pair WHERE id = ?1 OR name = ?1',
        mapper: (Map<String, Object?> row) => Pair(
            id: row['id'] as int,
            name: row['name'] as String,
            url: row['url'] as String),
        arguments: [query]);
  }

  @override
  Future<void> onInsert(List<Pair> items) async {
    await _pairInsertionAdapter.insertList(items, OnConflictStrategy.replace);
  }

  @override
  Future<void> onUpdate(List<Pair> items) async {
    await _pairUpdateAdapter.updateList(items, OnConflictStrategy.replace);
  }

  @override
  Future<void> onDelete(List<Pair> items) async {
    await _pairDeletionAdapter.deleteList(items);
  }
}

class _$UserLocal extends UserLocal {
  _$UserLocal(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _userInsertionAdapter = InsertionAdapter(
            database,
            'User',
            (User item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'email': item.email,
                  'password': item.password
                }),
        _userUpdateAdapter = UpdateAdapter(
            database,
            'User',
            ['id'],
            (User item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'email': item.email,
                  'password': item.password
                }),
        _userDeletionAdapter = DeletionAdapter(
            database,
            'User',
            ['id'],
            (User item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'email': item.email,
                  'password': item.password
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<User> _userInsertionAdapter;

  final UpdateAdapter<User> _userUpdateAdapter;

  final DeletionAdapter<User> _userDeletionAdapter;

  @override
  Future<List<User>> onGetAll() async {
    return _queryAdapter.queryList('SELECT * FROM User',
        mapper: (Map<String, Object?> row) => User(
            id: row['id'] as int,
            name: row['name'] as String,
            email: row['email'] as String,
            password: row['password'] as String));
  }

  @override
  Future<User?> onGet(int id) async {
    return _queryAdapter.query('SELECT * FROM User WHERE id = ?1',
        mapper: (Map<String, Object?> row) => User(
            id: row['id'] as int,
            name: row['name'] as String,
            email: row['email'] as String,
            password: row['password'] as String),
        arguments: [id]);
  }

  @override
  Future<void> onInsert(List<User> items) async {
    await _userInsertionAdapter.insertList(items, OnConflictStrategy.replace);
  }

  @override
  Future<void> onUpdate(List<User> items) async {
    await _userUpdateAdapter.updateList(items, OnConflictStrategy.replace);
  }

  @override
  Future<void> onDelete(List<User> items) async {
    await _userDeletionAdapter.deleteList(items);
  }
}

// ignore_for_file: unused_element
final _spriteLocalConverter = SpriteLocalConverter();

import 'package:dio/src/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:mydex/src/model/pokemon/pair.dart';
import 'package:mydex/src/model/pokemon/pokemon.dart';
import 'package:mydex/src/model/user.dart';
import 'package:mydex/src/service/repo.dart';

import '../core/util.dart';
import 'repo_test.mocks.dart';

@GenerateMocks([Dio, BaseLocal<String>, IUserRepo, PokemonRepo, PairRepo])
void main() {
  tests();
}

void tests() {
  late MockBaseLocal<String> local;
  late MockDio remote;
  late TestRepo repo;

  group('Repo', () {
    setUp(() {
      local = MockBaseLocal<String>();
      remote = MockDio();
      repo = TestRepo(local, remote);
    });

    test('doInsert', () async {
      when(local.onInsert(any)).thenAnswerVoidFuture();
      await repo.doInsert(['foo']);
      verify(local.onInsert(['foo'])).called(1);
    });

    test('doCache', () async {
      when(local.onDelete(any)).thenAnswerVoidFuture();
      when(local.onInsert(any)).thenAnswerVoidFuture();
      await repo.doCache('foo');
      verify(local.onDelete(['foo'])).called(1);
      verify(local.onInsert(['foo'])).called(1);
    });

    test('doCacheAll', () async {
      when(local.onDelete(any)).thenAnswerVoidFuture();
      when(local.onInsert(any)).thenAnswerVoidFuture();
      await repo.doCacheAll(['foo', 'bar']);
      verify(local.onDelete(['foo', 'bar'])).called(1);
      verify(local.onInsert(['foo', 'bar'])).called(1);
    });
  });
}

class TestRepo extends BaseRepo<String> {
  TestRepo(BaseLocal<String> local, Dio remote) : super(local, remote);

  @override
  Future<String> doGet(String query) => throw UnimplementedError();

  @override
  Future<List<String>> doGetAll() => throw UnimplementedError();
}

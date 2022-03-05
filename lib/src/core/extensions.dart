import 'dart:developer';

import 'types.dart';

Func<T, T> logData<T>(String tag) => (t) {
      log('[logData] $tag: $t');
      return t;
    };

extension ListExt<T> on List<T> {
  List<E> mapList<E>(Func<T, E> apply) => map(apply).toList();
}

extension MapExt<T> on Map<String, T> {
  Map<String, T> copyWith(String key, T data) => {...this, key: data};
}

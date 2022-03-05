import 'package:flutter_test/flutter_test.dart';
import 'package:mydex/src/core/const.dart';
import 'package:mydex/src/core/view.dart';
import 'package:mydex/src/model/state.dart';
import 'package:mydex/src/view/home/features/news.dart';
import 'package:redux/redux.dart';

import '../../../core/util.dart';

void main() {
  middlewareTests();
  viewTests();
}

void middlewareTests() {}

void viewTests() {
  group('NewsView', () {
    late Store<MyDexState> store;

    setUp(() {
      store = setupStore((_, c) => _);
    });

    //tearDown(() async => DI.instance.reset());

    testWidgets('build', (tester) async {
      await tester.pumpWidget(const TestApp(NewsView.new).storeProvider(store));
      expect(find.text(Const.newsTitle), findsOneWidget);
      expect(find.text(Const.appName), findsOneWidget);
    });
  });
}

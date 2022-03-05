void main() {
  middlewareTests();
  viewTests();
}

void middlewareTests() {
  // late MockIPokemonRepo pokemonRepo;
  // late MockIPairRepo pairRepo;
  // late SearchMiddleware middleware;
  // late MockIPrefs prefs;
  //
  // group('SearchMiddleware', () {
  //   setUp(() {
  //     prefs = MockIPrefs();
  //     pairRepo = MockIPairRepo();
  //     pokemonRepo = MockIPokemonRepo();
  //     middleware = SearchMiddleware(pokemonRepo, pairRepo);
  //   });

  // test('toggleTheme', () async {
  //   var store = setupStore((_, c) => _.copyWith(appState: AppReducer.reduce(_.appState, c)));
  //   when(prefs.setTheme(any)).thenAnswerVoidFuture();
  //   expect(store.state.appState.isDarkMode, false);
  //
  //   await middleware.toggleTheme(false)(store);
  //   expect(store.state.appState.isDarkMode, true);
  //
  //   await middleware.toggleTheme(true)(store);
  //   expect(store.state.appState.isDarkMode, false);
  // });
  //
  // test('logout', () async {
  //   var store = setupStore((_, c) => _.copyWith(appState: AppReducer.reduce(_.appState, c)));
  //   when(prefs.setAuth(any)).thenAnswerVoidFuture();
  //   expect(store.state.appState.isAuthed, false);
  //
  //   store.dispatch(const AppAction.authChanged(true));
  //   expect(store.state.appState.isAuthed, true);
  //
  //   await middleware.logout()(store);
  //   expect(store.state.appState.isAuthed, false);
  //   verify(prefs.setAuth(any)).called(1);
  // });
  //});
}

void viewTests() {
  // late MockIPrefs prefs;
  // late Store<MyDexState> store;
  // late SearchMiddleware middleware;

  // group('SearchView', () {
  //   setUp(() {
  //     prefs = MockIPrefs();
  //     middleware = SearchMiddleware(prefs);
  //     store = setupStore((_, c) => _.copyWith(appState: AppReducer.reduce(_.appState, c)));
  //     Graph.di
  //       ..registerLazySingleton<Store<MyDexState>>(() => store)
  //       ..registerLazySingleton<SearchMiddleware>(() => middleware);
  //   });
  //
  //   tearDown(() async => Graph.di.reset());
  //
  //   testWidgets('buttons', (tester) async {
  //     var items = SearchView.buttons(middleware);
  //     await tester.inflateWithStore(store, Column(children: items.map((_) => Material(child: _)).toList()));
  //     expect(find.text(Const.logoutBtn), findsOneWidget);
  //     // TODO?
  //   });
  //
  //   testWidgets('toggles', (tester) async {
  //     var buttonsView = SearchView.toggles(middleware, false);
  //     await tester.inflateWithStore(store, Column(children: buttonsView.map((_) => Material(child: _)).toList()));
  //     expect(find.text(Const.darkModeBtn), findsOneWidget);
  //     // TODO?
  //   });
  //
  //   testWidgets('userView', (tester) async {
  //     var user = const User(1, 'a', 'b@', 'c');
  //     var userView = SearchView.userView(user);
  //     await tester.inflateWithStore(store, Column(children: userView.map((_) => Material(child: _)).toList()));
  //     expect(find.text('Name: a'), findsOneWidget);
  //     expect(find.text('Email: b@'), findsOneWidget);
  //     expect(find.text('Password: c'), findsOneWidget);
  //   });
  //
  //   testWidgets('build', (tester) async {
  //     var it = setupStore((_, c) => MyDexState(
  //       owner: UserReducer.reduce(_.owner, c),
  //       appState: AppReducer.reduce(_.appState, c),
  //     ));
  //
  //     await tester.inflateWithStore(it, SearchView());
  //     it.dispatch(const UserAction.ownerChanged(User(1, 'a', 'b@', 'c')));
  //     await tester.pump(Duration.zero);
  //     expect(find.text('Name: a'), findsOneWidget);
  //     expect(find.text('Email: b@'), findsOneWidget);
  //     expect(find.text('Password: c'), findsOneWidget);
  //     expect(find.text(Const.logoutBtn), findsOneWidget);
  //     expect(find.text(Const.darkModeBtn), findsOneWidget);
  //   });
  // });
}

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:redux/redux.dart';
import 'package:redux_logging/redux_logging.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/pokemon/pair.dart';
import '../model/pokemon/pokemon.dart';
import '../model/state.dart';
import '../model/user.dart';
import '../service/nav.dart';
import '../service/prefs.dart';
import '../service/repo.dart';
import '../service/style.dart';
import '../view/auth/auth.dart';
import '../view/auth/features/login.dart';
import '../view/auth/features/register.dart';
import '../view/home/features/favorites.dart';
import '../view/home/features/news.dart';
import '../view/home/features/search.dart';
import '../view/home/features/settings.dart';
import '../view/home/home.dart';
import 'const.dart';

typedef DI = GetIt;

class Graph {
  static Future<DI> setup() => Future.value(DI.instance) //
      .then(ReduxModule.setup)
      .then(PresentationModule.setup)
      .then(ServiceModule.setup)
      .then(RepositoryModule.setup)
      .then(MiddlewareModule.setup)
      .then((di) => di.allReady().then((_) => di));
}

class ServiceModule {
  static DI setup(DI di) => di
    ..registerSingletonAsync<SharedPreferences>(SharedPreferences.getInstance)
    ..registerSingletonWithDependencies<IPrefs>(
      () => Prefs(di.get()),
      dependsOn: [SharedPreferences],
    )
    ..registerSingletonAsync<AppDatabase>($FloorAppDatabase.databaseBuilder(Const.databaseName).build)
    ..registerLazySingleton<PrettyDioLogger>(PrettyDioLogger.new)
    ..registerLazySingleton<Dio>(Dio.new); //..interceptors.add(di.get<PrettyDioLogger>()));
}

class RepositoryModule {
  static DI setup(DI di) => di
    // user
    ..registerSingletonWithDependencies<UserLocal>(() => di.get<AppDatabase>().userLocal, dependsOn: [AppDatabase])
    ..registerLazySingleton<IUserRepo>(() => UserRepo(di.get()))
    // pair
    ..registerSingletonWithDependencies<PairLocal>(() => di.get<AppDatabase>().pairLocal, dependsOn: [AppDatabase])
    ..registerSingletonWithDependencies<PairRepo>(() => PairRepo(di.get(), di.get()), dependsOn: [PairLocal])
    // pokemon
    ..registerSingletonWithDependencies<PokemonLocal>(() => di.get<AppDatabase>().pokemonLocal, dependsOn: [AppDatabase])
    ..registerSingletonWithDependencies<PokemonRepo>(() => PokemonRepo(di.get(), di.get()), dependsOn: [PokemonLocal]);
}

class ReduxModule {
  static DI setup(DI di) => di
    ..registerLazySingleton<Store<MyDexState>>(() => Store<MyDexState>(
          MyDexReducer.reduce,
          initialState: devState(),
          middleware: [
            LoggingMiddleware.printer(),
            thunkMiddleware,
          ],
        ));
}

class MiddlewareModule {
  static DI setup(DI di) => di
    ..registerLazySingleton<HomeMiddleware>(() => HomeMiddleware(di.get()))
    ..registerLazySingleton<SettingsMiddleware>(() => SettingsMiddleware(di.get()))
    ..registerLazySingleton<LoginMiddleware>(() => LoginMiddleware(di.get(), di.get()))
    ..registerLazySingleton<SearchMiddleware>(() => SearchMiddleware(di.get(), di.get()))
    ..registerLazySingleton<RegisterMiddleware>(() => RegisterMiddleware(di.get()));
}

class PresentationModule {
  static DI setup(DI di) => di
    ..registerLazySingleton<IStyle>(Style.new)
    ..registerLazySingleton<INav>(() => Nav({
          Const.authView: AuthView.new,
          Const.loginView: LoginView.new,
          Const.registerView: RegisterView.new,
          Const.homeView: HomeView.new,
          Const.newsView: NewsView.new,
          Const.searchView: SearchView.new,
          Const.favoritesView: FavoritesView.new,
          Const.settingsView: SettingsView.new,
        }));
}

MyDexState devState() => const MyDexState().copyWith(
      homeState: const HomeState(1),
      authState: const AuthState(
        isAuthed: true,
        owner: User(
          id: 1,
          name: 'matthew',
          email: 'mshannon93@gmail.com',
          password: 'abc123',
        ),
      ),
    );

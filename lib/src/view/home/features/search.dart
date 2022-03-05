import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it_mixin/get_it_mixin.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import '../../../core/const.dart';
import '../../../core/extensions.dart';
import '../../../core/types.dart';
import '../../../core/view.dart';
import '../../../model/pokemon/pair.dart';
import '../../../model/pokemon/pokemon.dart';
import '../../../model/state.dart';

part 'search.freezed.dart';

class SearchView extends StatelessWidget with GetItMixin {
  SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SearchMiddleware middleware = get();
    return StoreConnector<MyDexState, SearchVM>(
        converter: (_) => SearchVM.fromStore(_, middleware),
        builder: (ctx, _) => Scaffold(
              appBar: AppBar(
                title: SearchView.title(_, Theme.of(context)),
                actions: SearchView.actions(_),
              ),
              body: View.listView(SearchView.body(_)),
            ));
  }

  static Widget title(SearchVM vm, ThemeData theme) => //
      vm.pokemonVm.isNotEmpty()
          ? SearchView.pokemonTitle(vm.pokemonVm)
          : vm.state.isSearching
              ? SearchView.searchEditText(vm, theme)
              : const Text(Const.appName);

  static List<Widget> actions(SearchVM vm) => [
        vm.state.isSearching || vm.pokemonVm.isNotEmpty() //
            ? View.action(Icons.clear, vm.isSearchingChanged(false))
            : View.action(Icons.search, vm.isSearchingChanged(true))
      ];

  static List<Widget> body(SearchVM vm) => //
      vm.state.isLoading
          ? [const CircularProgressIndicator().center()]
          : vm.pokemonVm.isNotEmpty()
              ? pokemonCardView(vm.pokemonVm)
              : vm.state.pairs.isNotEmpty
                  ? pairListView(vm)
                  : [const Center(child: Text(Const.searchTitle))];

  static Widget searchEditText(SearchVM vm, ThemeData theme) => TextField(
      onChanged: vm.onSearchQueryChanged,
      autofocus: true,
      //style: theme.invert().textTheme.titleLarge,
      decoration: const InputDecoration(
        border: OutlineInputBorder(borderSide: BorderSide.none),
        prefixIcon: Icon(Icons.search), //, color: Colors.white),
        //hintStyle: TextStyle(color: theme.invert().hintColor),
        hintText: 'Search...',
        //fillColor: Colors.white,
        //filled: true,
      ));

  static List<Widget> pairListView(SearchVM vm) => vm.pairsVM.mapList((_) => //
      ListTile(onTap: vm.onPairSelected(_.pair), title: Text(_.title())));

  static Widget pokemonTitle(PokemonVM vm) => //
      Text(vm.pokemon.name);

  static List<Widget> pokemonCardView(PokemonVM vm) => [
        View.card([
          Row(mainAxisSize: MainAxisSize.min, children: [
            //Image.network(vm.sprites.frontSprite())
            //vm.sprites.normal().mapList(Image.network)
          ]),
          //Row(children: vm.sprites.shiny().mapList(Image.network)),
        ], 2),
        View.card(
          [
            View.listView(
              vm.fields().mapList((_) => //
                  Text(_, textAlign: TextAlign.start)),
            ),
          ],
        )
      ];
}

class SearchVM {
  final SearchState state;
  final PokemonVM pokemonVm;
  final List<PairVM> pairsVM;
  final Func<Pair, Runnable> onPairSelected;
  final Func<bool, Runnable> isSearchingChanged;
  final Consumer<String> onSearchQueryChanged;

  SearchVM({
    required this.state,
    required this.pairsVM,
    required this.pokemonVm,
    required this.onPairSelected,
    required this.isSearchingChanged,
    required this.onSearchQueryChanged,
  });

  factory SearchVM.fromStore(Store<MyDexState> store, SearchMiddleware middleware) => SearchVM(
      state: store.state.searchState,
      pairsVM: store.state.searchState.pairs.mapList(PairVM.new),
      pokemonVm: PokemonVM.def(store.state.searchState.pokemon),
      onPairSelected: (_) => () => store.dispatch(middleware.pairSelected(_)),
      isSearchingChanged: (_) => () => store.dispatch(middleware.searchStatusChanged(_)),
      onSearchQueryChanged: (_) => store.dispatch(middleware.searchTextChanged(_)));
}

class SearchMiddleware {
  final PokemonRepo pokemonRepo;
  final PairRepo pairRepo;

  SearchMiddleware(this.pokemonRepo, this.pairRepo);

  Future<List<Pair>> getPairs(String query) => (pairRepo.doGetAll()) //
      .then((xs) => xs.where((x) => x.toString().contains(query)))
      .then((xs) => xs.sorted((a, b) => a.name.length - b.name.length));

  ThunkAction<MyDexState> searchTextChanged(String query) => (store) async {
        // if (query.isEmpty || (query.length < 3 && int.tryParse(query) == null)) {
        //   store.dispatch(const SearchAction.pairsChanged([]));
        //   return;
        // }
        var pairs = await getPairs(query);
        store.dispatch(SearchAction.pairsChanged(pairs));
      };

  ThunkAction<MyDexState> pairSelected(Pair pair) => (store) async {
        store.dispatch(const SearchAction.isSearching(false));
        var res = await pokemonRepo.doGet(pair.name);
        store.dispatch(SearchAction.pokemonSelected(res));
      };

  ThunkAction<MyDexState> searchStatusChanged(bool res) => (store) async {
        if (res == false) {
          store.dispatch(const SearchAction.pairsChanged([]));
          store.dispatch(const SearchAction.pokemonSelected(Pokemon()));
        }
        store.dispatch(SearchAction.isSearching(res));
      };
}

class SearchReducer {
  static SearchState reduce(SearchState prev, dynamic action) => !(action is SearchAction)
      ? prev
      : action.when(
          isLoading: (_) => prev.copyWith(isLoading: _),
          isSearching: (_) => prev.copyWith(isSearching: _),
          pairsChanged: (_) => prev.copyWith(pairs: _),
          pokemonSelected: (_) => prev.copyWith(pokemon: _),
        );
}

@freezed
class SearchState with _$SearchState {
  const factory SearchState([
    @Default([]) List<Pair> pairs,
    @Default(Pokemon()) Pokemon pokemon,
    @Default(false) bool isSearching,
    @Default(false) bool isLoading,
  ]) = _SearchState;
}

@freezed
class SearchAction with _$SearchAction {
  const factory SearchAction.isLoading(bool status) = IsLoading;
  const factory SearchAction.isSearching(bool status) = IsSearching;
  const factory SearchAction.pairsChanged(List<Pair> pairs) = PairsChanged;
  const factory SearchAction.pokemonSelected(Pokemon pokemons) = PokemonSelected;
}

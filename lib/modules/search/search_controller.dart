import 'package:pokemons_io/modules/search/repositories/search_repository.dart';
import 'package:pokemons_io/modules/search/search_state.dart';

class SearchController {
  late SearchRepository searchRepository;
  SearchState searchState = SearchStateEmpty();
  Function(SearchState state)? onListen;

  SearchController({SearchRepository? searchRepository}) {
    this.searchRepository = searchRepository ?? SearchRepository();
  }

  getPokemons() async {
    update(SearchStateLoading());
    try {
      final pokemons = await searchRepository.getPokemons();
      update(SearchStateSuccess(pokemons: pokemons));
    } catch (e) {
      update(SearchStateFailure(message: e.toString()));
    }
  }

  void update(SearchState state) {
    this.searchState = state;
    if (onListen != null) {
      onListen!(searchState);
    }
  }

  void listen(Function(SearchState state) onChange) {
    onListen = onChange;
  }
}

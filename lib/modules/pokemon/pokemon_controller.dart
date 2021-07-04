import 'package:pokemons_io/modules/pokemon/pokemon_state.dart';
import 'package:pokemons_io/modules/pokemon/repositories/interfaces/pokemon_respository_interface.dart';
import 'package:pokemons_io/modules/pokemon/repositories/pokemon_respository_mock.dart';

class PokemonController {
  late IPokemonRepository pokemonRepository;
  PokemonState pokemonState = PokemonStateEmpty();
  Function(PokemonState state)? onListen;

  PokemonController({IPokemonRepository? pokemonRepository}) {
    this.pokemonRepository = pokemonRepository ?? PokemonRespositoryMock();
  }

  getPokemon(int idPokemon) async {
    update(PokemonStateLoading());

    try {
      final pokemon = await pokemonRepository.getPokemon(idPokemon);
      update(PokemonStateSuccess(pokemon: pokemon));
    } catch (e) {
      update(PokemonStateFailure(message: e.toString()));
    }
  }

  void update(PokemonState state) {
    this.pokemonState = state;
    if (onListen != null) {
      onListen!(pokemonState);
    }
  }

  void listen(Function(PokemonState state) onChange) {
    onListen = onChange;
  }
}

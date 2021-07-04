import 'package:pokemons_io/modules/pokemon/models/pokemon_model.dart';

abstract class IPokemonRepository {
  Future<PokemonModel> getPokemon(int id);
}

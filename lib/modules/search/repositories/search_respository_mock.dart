import 'package:pokemons_io/modules/search/repositories/search_repository.dart';
import 'package:pokemons_io/shared/models/card_pokemon_model.dart';

class SearchRepositoryMock implements SearchRepository {
  @override
  Future<List<CardPokemonModel>> getPokemons() async {
    await Future.delayed(
      Duration(seconds: 2),
    );

    return [
      CardPokemonModel(
        id: 1,
        name: "Bulbasaur",
        imageUrl:
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png",
        types: ["grass", "poison"],
      ),
      CardPokemonModel(
        id: 1,
        name: "Bulbasaur",
        imageUrl:
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png",
        types: ["grass", "poison"],
      ),
      CardPokemonModel(
        id: 1,
        name: "Bulbasaur",
        imageUrl:
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png",
        types: ["grass", "poison"],
      ),
      CardPokemonModel(
        id: 1,
        name: "Bulbasaur",
        imageUrl:
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png",
        types: ["grass", "poison"],
      ),
    ];
  }
}

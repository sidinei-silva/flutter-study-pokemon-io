import 'package:pokemons_io/modules/pokemon/models/pokemon_model.dart';
import 'package:pokemons_io/modules/pokemon/repositories/interfaces/pokemon_respository_interface.dart';

class PokemonRespositoryMock implements IPokemonRepository {
  @override
  Future<PokemonModel> getPokemon(int id) async {
    await Future.delayed(
      Duration(seconds: 2),
    );

    return PokemonModel(
      id: 1,
      name: "bulbasaur",
      imageUrl:
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png",
      types: ['grass', 'poison'],
      weight: 69,
      height: 7,
      moves: [
        "chlorophyll",
        "overgrow",
      ],
      description:
          "While it is young, it uses the nutrients that are stored in the seeds on its back in order to grow.",
      hp: 45,
      attack: 49,
      defense: 49,
      specialAttack: 65,
      specialDefense: 65,
      speed: 45,
    );
  }
}

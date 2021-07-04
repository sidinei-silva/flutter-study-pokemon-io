import 'package:dio/dio.dart';
import 'package:pokemons_io/modules/pokemon/models/pokemon_model.dart';
import 'package:pokemons_io/modules/pokemon/models/pokemon_stats_model.dart';
import 'package:pokemons_io/modules/pokemon/repositories/interfaces/pokemon_respository_interface.dart';

class PokemonRespositoryApi implements IPokemonRepository {
  final _dio = Dio();

  @override
  Future<PokemonModel> getPokemon(int id) async {
    final pokeApiUrl = "https://pokeapi.co/api/v2/pokemon/$id";
    final pokeApiGlitch = "https://pokeapi.glitch.me/v1/pokemon/$id";

    final pokeApiResponse = await _dio.get(pokeApiUrl);
    final pokeApiGlitchResponse = await _dio.get(pokeApiGlitch);

    final Map<String, double> stats = new Map();

    for (var statInterator in pokeApiResponse.data['stats']) {
      stats[statInterator['stat']['name']] = double.parse(
        statInterator['base_stat'].toString(),
      );
    }

    final pokemon = PokemonModel(
      id: pokeApiResponse.data['id'],
      name: pokeApiResponse.data['name'],
      imageUrl: pokeApiResponse.data['sprites']['other']['official-artwork']
          ['front_default'],
      types: [...pokeApiGlitchResponse.data[0]['types']],
      weight: double.parse(pokeApiResponse.data['weight'].toString()),
      height: double.parse(pokeApiResponse.data['height'].toString()),
      moves: [
        ...pokeApiGlitchResponse.data[0]['abilities']['normal'],
        ...pokeApiGlitchResponse.data[0]['abilities']['hidden']
      ],
      description: pokeApiGlitchResponse.data[0]['description'],
      stats: PokemonStatsModel(
        hp: stats['hp']!,
        attack: stats['attack']!,
        defense: stats['defense']!,
        specialAttack: stats['special-attack']!,
        specialDefense: stats['special-defense']!,
        speed: stats['speed']!,
      ),
    );

    return pokemon;
  }
}

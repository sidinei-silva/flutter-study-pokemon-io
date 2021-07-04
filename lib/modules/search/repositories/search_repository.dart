import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pokemons_io/shared/models/card_pokemon_model.dart';

class SearchRepository {
  final _dio = Dio();

  Future<List<CardPokemonModel>> getPokemons() async {
    final url =
        "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";

    final response = await _dio.get(url);
    final responseDecoded = jsonDecode(response.data);

    final listResult = responseDecoded['pokemon'] as List;

    List<CardPokemonModel> pokemons = [];

    for (var json in listResult) {
      final urlImage =
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${json['id']}.png";
      final jsonPokemon = {
        'id': json['id'],
        'name': json['name'],
        "types": json['type'],
        "imageUrl": urlImage,
      };

      final pokemon = CardPokemonModel.fromJson(jsonEncode(jsonPokemon));

      pokemons.add(pokemon);
    }

    return pokemons;
  }
}

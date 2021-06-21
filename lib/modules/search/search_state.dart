import 'package:pokemons_io/shared/models/card_pokemon_model.dart';

abstract class SearchState {}

class SearchStateEmpty extends SearchState {}

class SearchStateLoading extends SearchState {}

class SearchStateSuccess extends SearchState {
  List<CardPokemonModel> pokemons;

  SearchStateSuccess({required this.pokemons});
}

class SearchStateFailure extends SearchState {
  String message;

  SearchStateFailure({
    required this.message,
  });
}

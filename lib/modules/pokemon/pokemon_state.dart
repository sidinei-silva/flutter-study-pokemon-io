import 'package:pokemons_io/modules/pokemon/models/pokemon_model.dart';

abstract class PokemonState {}

class PokemonStateEmpty extends PokemonState {}

class PokemonStateLoading extends PokemonState {}

class PokemonStateSuccess extends PokemonState {
  PokemonModel pokemon;

  PokemonStateSuccess({required this.pokemon});
}

class PokemonStateFailure extends PokemonState {
  String message;

  PokemonStateFailure({
    required this.message,
  });
}

import 'package:flutter/cupertino.dart';

abstract class PokemonColors {
  // ignore: unused_element
  Map<String, Color> get _colors;
  List<String> get types;
  Color getColorPokemonByType(String typePokemon);
}

class PokemonColorsDefault implements PokemonColors {
  @override
  Map<String, Color> get _colors => {
        "rock": Color(0xFFB69E31),
        "ghost": Color(0xFF70559B),
        "stell": Color(0xFFB7B9D0),
        "water": Color(0xFF6493EB),
        "grass": Color(0xFF74CB48),
        "psychic": Color(0xFFFB5584),
        "ice": Color(0xFF9AD6DF),
        "dark": Color(0xFF75574C),
        "fairy": Color(0xFFE69EAC),
        "normal": Color(0xFFAAA67F),
        "fighting": Color(0xFFC12239),
        "flying": Color(0xFFA891EC),
        "poison": Color(0xFFA43E9E),
        "ground": Color(0xFFCCCCCC),
        "bug": Color(0xFFA7B723),
        "fire": Color(0xFFF57D31),
        "electric": Color(0xFFF9CF30),
        "dragon": Color(0xFF7037FF),
      };

  @override
  Color getColorPokemonByType(String typePokemon) {
    final parseTypePokemon = typePokemon.toLowerCase();
    final searchType = this._colors.containsKey(parseTypePokemon);

    if (!searchType) throw Exception("Tipo de pokemon não existe");

    return this._colors[parseTypePokemon]!;
  }

  @override
  List<String> get types => this._colors.keys.toList();
}

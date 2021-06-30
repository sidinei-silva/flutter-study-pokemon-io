import 'package:flutter/material.dart';

import 'package:pokemons_io/theme/app_theme.dart';

class ChipTypeWidget extends StatelessWidget {
  final String labelType;

  const ChipTypeWidget({
    Key? key,
    required this.labelType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
      backgroundColor: AppTheme.pokemonColor.getColorPokemonByType(labelType),
      labelStyle: AppTheme.textStyles.labelChipType,
      label: Text("${labelType[0].toUpperCase()}${labelType.substring(1)}"),
    );
  }
}

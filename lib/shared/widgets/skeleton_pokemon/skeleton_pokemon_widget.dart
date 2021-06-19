import 'package:flutter/material.dart';
import 'package:pokemons_io/core/app_images.dart';
import 'package:pokemons_io/theme/app_theme.dart';

class SkeletonPokemonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 124,
      height: 112,
      decoration: BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(width: 1, color: Colors.grey),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
              child: Text(
                "#999",
                style: AppTheme.textStyles.idSkeletonPokemon,
              ),
            ),
          ),
          Image.asset(
            AppImages.placePokemon,
            width: 72,
            height: 72,
          ),
          Container(
            height: 24,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(9),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Pokémon Name",
                  textAlign: TextAlign.center,
                  style: AppTheme.textStyles.labelSkeletonPokemon,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

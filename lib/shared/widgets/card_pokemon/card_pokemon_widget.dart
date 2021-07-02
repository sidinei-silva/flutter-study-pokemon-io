import 'package:flutter/material.dart';

import 'package:pokemons_io/shared/widgets/loading_image_pokemon/loading_image_pokemon_widget.dart';
import 'package:pokemons_io/theme/app_theme.dart';

class CardPokemonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String namePokemon;
  final int idPokemon;
  final String firstTypePokemon;
  final String urlImagePokemon;

  const CardPokemonWidget({
    Key? key,
    required this.onTap,
    required this.namePokemon,
    required this.idPokemon,
    required this.firstTypePokemon,
    required this.urlImagePokemon,
  }) : super(key: key);

  Color get colorPokemon =>
      AppTheme.pokemonColor.getColorPokemonByType(firstTypePokemon);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 124,
        height: 112,
        decoration: BoxDecoration(
          border: Border.fromBorderSide(
            BorderSide(width: 1, color: colorPokemon),
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
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 4,
                ),
                child: Text(
                  idPokemon.toString().padLeft(3, '0'),
                  style: AppTheme.textStyles.idCardPokemon(colorPokemon),
                ),
              ),
            ),
            Image.network(
              urlImagePokemon,
              width: 72,
              height: 72,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return LoadingImagePokemonWidget();
              },
            ),
            Container(
              decoration: BoxDecoration(
                color: colorPokemon,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(9),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    namePokemon,
                    textAlign: TextAlign.center,
                    style: AppTheme.textStyles.labelSkeletonPokemon,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

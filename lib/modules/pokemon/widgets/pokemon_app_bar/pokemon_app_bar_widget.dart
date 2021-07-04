import 'package:flutter/material.dart';
import 'package:pokemons_io/core/app_images.dart';
import 'package:pokemons_io/theme/app_theme.dart';

class PokemonAppBarWidget extends PreferredSize {
  final String namePokemon;
  final int idPokemon;
  final BuildContext context;

  PokemonAppBarWidget(
      {required this.namePokemon,
      required this.idPokemon,
      required this.context})
      : super(
          preferredSize: Size.fromHeight(224),
          child: SafeArea(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              size: 32,
                              color: AppTheme.colors.iconBackPokemonPage,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            namePokemon,
                            style: AppTheme.textStyles.titlePokemonPage,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 65),
                        child: Text(
                          "#${idPokemon.toString().padLeft(3, '0')}",
                          style: AppTheme.textStyles.idPokemonPage,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 59),
                      child: Image.asset(
                        AppImages.pokeballTransparent,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
}

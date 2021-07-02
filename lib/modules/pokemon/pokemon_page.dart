import 'package:flutter/material.dart';
import 'package:pokemons_io/modules/home/widgets/button_add/button_add_widget.dart';
import 'package:pokemons_io/modules/pokemon/widgets/about_features/about_features_widget.dart';
import 'package:pokemons_io/modules/pokemon/widgets/button_pokemon/button_pokemon_widget.dart';
import 'package:pokemons_io/modules/pokemon/widgets/chip_type/chip_type_widget.dart';
import 'package:pokemons_io/modules/pokemon/widgets/pokemon_app_bar/pokemon_app_bar_widget.dart';
import 'package:pokemons_io/modules/pokemon/widgets/statistics/statistics_widget.dart';
import 'package:pokemons_io/theme/app_theme.dart';

class PokemonPage extends StatelessWidget {
  const PokemonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final typesPokemon = ['Grass', 'Poison'];
    return Scaffold(
      backgroundColor: Color(0xFF74CB48),
      appBar: PokemonAppBarWidget(
          namePokemon: "Pikachu", idPokemon: "#001", context: context),
      body: Container(
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(right: 30, left: 30, bottom: 20),
                    child: Container(
                      padding: const EdgeInsets.only(top: 56),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ...typesPokemon.map(
                                (type) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: ChipTypeWidget(labelType: type),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              "About",
                              style: AppTheme.textStyles.aboutPokemonPage(
                                color: AppTheme.pokemonColor
                                    .getColorPokemonByType("Grass"),
                              ),
                            ),
                          ),
                          AboutFeaturesWidget(
                            height: 20,
                            weight: 1000,
                            moves: [
                              "Chlorophyll",
                              "Overgrow",
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 20,
                            ),
                            child: Text(
                              "There is a plant seed on its back right from the day this Pokémon is born. The seed slowly grows larger.",
                              style: AppTheme.textStyles.aboutDescription,
                            ),
                          ),
                          Text(
                            "Base Stats",
                            style: AppTheme.textStyles.aboutPokemonPage(
                              color: AppTheme.pokemonColor
                                  .getColorPokemonByType("Grass"),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: StatisticsWidget(
                              color: AppTheme.pokemonColor
                                  .getColorPokemonByType("Grass"),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ButtonPokemonWidget(
                                  label: "Adicionar",
                                  color: AppTheme.pokemonColor
                                      .getColorPokemonByType("Grass"),
                                  onTap: () {},
                                ),
                                ButtonPokemonWidget(
                                  label: "Cor favorita",
                                  color: AppTheme.pokemonColor
                                      .getColorPokemonByType("Grass"),
                                  onTap: () {},
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment(0, -1.9),
              child: Image.network(
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png",
                width: 200,
                height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

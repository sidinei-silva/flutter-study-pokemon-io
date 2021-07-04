import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pokemons_io/modules/pokemon/pokemon_controller.dart';
import 'package:pokemons_io/modules/pokemon/pokemon_state.dart';
import 'package:pokemons_io/modules/pokemon/widgets/about_features/about_features_widget.dart';
import 'package:pokemons_io/modules/pokemon/widgets/button_pokemon/button_pokemon_widget.dart';
import 'package:pokemons_io/modules/pokemon/widgets/chip_type/chip_type_widget.dart';
import 'package:pokemons_io/modules/pokemon/widgets/pokemon_app_bar/pokemon_app_bar_widget.dart';
import 'package:pokemons_io/modules/pokemon/widgets/statistics/statistics_widget.dart';
import 'package:pokemons_io/shared/widgets/loading_image_pokemon/loading_image_pokemon_widget.dart';
import 'package:pokemons_io/theme/app_theme.dart';

class PokemonPage extends StatefulWidget {
  const PokemonPage({Key? key}) : super(key: key);

  @override
  _PokemonPageState createState() => _PokemonPageState();
}

class _PokemonPageState extends State<PokemonPage> {
  final pokemonController = PokemonController();

  @override
  void initState() {
    pokemonController.getPokemon(1);
    pokemonController.listen((state) => {
          setState(() {}),
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    switch (pokemonController.pokemonState.runtimeType) {
      case PokemonStateLoading:
        return Scaffold(
          body: Center(
            child: LoadingImagePokemonWidget(),
          ),
        );
      case PokemonStateFailure:
        return Scaffold(
          body: Center(
            child: Text(
              (pokemonController.pokemonState as PokemonStateFailure).message,
            ),
          ),
        );

      case PokemonStateSuccess:
        final pokemon =
            (pokemonController.pokemonState as PokemonStateSuccess).pokemon;

        final colorPokemon =
            AppTheme.pokemonColor.getColorPokemonByType(pokemon.types.first);

        return Scaffold(
          backgroundColor: Color(0xFF74CB48),
          appBar: PokemonAppBarWidget(
            namePokemon: toBeginningOfSentenceCase(pokemon.name)!,
            idPokemon: pokemon.id,
            context: context,
          ),
          body: Container(
            child: Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 30, left: 30, bottom: 20),
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
                                  ...pokemon.types.map(
                                    (type) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0,
                                      ),
                                      child: ChipTypeWidget(labelType: type),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: Text(
                                  "About",
                                  style: AppTheme.textStyles.aboutPokemonPage(
                                    color: colorPokemon,
                                  ),
                                ),
                              ),
                              AboutFeaturesWidget(
                                height: 7,
                                weight: 69,
                                moves: pokemon.moves,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 20,
                                ),
                                child: Text(
                                  pokemon.description,
                                  style: AppTheme.textStyles.aboutDescription,
                                ),
                              ),
                              Text(
                                "Base Stats",
                                style: AppTheme.textStyles.aboutPokemonPage(
                                  color: colorPokemon,
                                ),
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: StatisticsWidget(
                                  color: colorPokemon,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ButtonPokemonWidget(
                                      label: "Adicionar",
                                      color: colorPokemon,
                                      onTap: () {},
                                    ),
                                    ButtonPokemonWidget(
                                      label: "Cor favorita",
                                      color: colorPokemon,
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
                    pokemon.imageUrl,
                    width: 200,
                    height: 200,
                  ),
                ),
              ],
            ),
          ),
        );
      default:
        return Container();
    }
  }
}

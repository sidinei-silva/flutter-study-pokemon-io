import 'package:flutter/material.dart';
import 'package:pokemons_io/core/app_images.dart';
import 'package:pokemons_io/modules/pokemon/pokemon_page_args.dart';
import 'package:pokemons_io/modules/search/search_controller.dart';
import 'package:pokemons_io/modules/search/search_state.dart';
import 'package:pokemons_io/shared/widgets/card_pokemon/card_pokemon_widget.dart';
import 'package:pokemons_io/shared/widgets/search_input_text/search_input_text.dart';
import 'package:pokemons_io/shared/widgets/skeleton_pokemon/skeleton_pokemon_widget.dart';
import 'package:pokemons_io/theme/app_theme.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final searchController = SearchController();

  @override
  void initState() {
    searchController.getPokemons();
    searchController.listen((state) => {
          setState(() {}),
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.colors.appBar,
        leading: Container(),
        leadingWidth: 0,
        title: Row(
          children: [
            Expanded(
              flex: 1,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
                color: AppTheme.colors.iconArrowBack,
              ),
            ),
            Expanded(
              flex: 6,
              child: Image.asset(
                AppImages.logo,
                width: 60,
                height: 23,
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                width: 59,
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 27,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SearchInputText(
              onChange: (value) {},
              hintText: "Buscar Pokemon...",
            ),
          ),
          SizedBox(
            height: 33,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: [
                if (searchController.searchState is SearchStateLoading) ...[
                  ...List.generate(
                    6,
                    (index) => SkeletonPokemonWidget(),
                  )
                ] else if (searchController.searchState
                    is SearchStateSuccess) ...[
                  ...(searchController.searchState as SearchStateSuccess)
                      .pokemons
                      .map((pokemon) => CardPokemonWidget(
                            namePokemon: pokemon.name,
                            idPokemon: pokemon.id,
                            firstTypePokemon: pokemon.types[0],
                            urlImagePokemon: pokemon.imageUrl,
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                "/pokemon",
                                arguments: PokemonPageArgs(
                                  idPokemon: pokemon.id,
                                  added: false,
                                ),
                              );
                            },
                          ))
                ] else if (searchController.searchState
                    is SearchStateFailure) ...[
                  Text((searchController.searchState as SearchStateFailure)
                      .message)
                ]
              ],
            ),
          ),
        ],
      ),
    );
  }
}

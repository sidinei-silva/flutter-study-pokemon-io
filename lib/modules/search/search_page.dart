import 'package:flutter/material.dart';
import 'package:pokemons_io/core/app_images.dart';
import 'package:pokemons_io/shared/widgets/card_pokemon/card_pokemon_widget.dart';
import 'package:pokemons_io/shared/widgets/search_input_text/search_input_text.dart';
import 'package:pokemons_io/theme/app_theme.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

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
                CardPokemonWidget(
                  namePokemon: 'Bulbasaur',
                  idPokemon: '001',
                  firstTypePokemon: 'Grass',
                  urlImagePokemon:
                      "http://www.serebii.net/pokemongo/pokemon/001.png",
                ),
                CardPokemonWidget(
                  namePokemon: 'Charmander',
                  idPokemon: '004',
                  firstTypePokemon: 'Fire',
                  urlImagePokemon:
                      "http://www.serebii.net/pokemongo/pokemon/004.png",
                ),
                CardPokemonWidget(
                  namePokemon: 'Squirtle',
                  idPokemon: '007',
                  firstTypePokemon: 'Water',
                  urlImagePokemon:
                      "http://www.serebii.net/pokemongo/pokemon/007.png",
                ),
                CardPokemonWidget(
                  namePokemon: 'Caterpie',
                  idPokemon: '010',
                  firstTypePokemon: 'Bug',
                  urlImagePokemon:
                      "http://www.serebii.net/pokemongo/pokemon/010.png",
                ),
                CardPokemonWidget(
                  namePokemon: 'Pikachu',
                  idPokemon: '025',
                  firstTypePokemon: 'Electric',
                  urlImagePokemon:
                      "http://www.serebii.net/pokemongo/pokemon/025.png",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

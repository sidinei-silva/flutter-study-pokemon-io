import 'package:flutter/material.dart';
import 'package:pokemons_io/modules/home/widgets/sliver_app_bar/sliver_app_bar_widget.dart';
import 'package:pokemons_io/shared/widgets/skeleton_pokemon/skeleton_pokemon_widget.dart';
import 'package:pokemons_io/theme/app_theme.dart';

class HomePage extends StatelessWidget {
  final pokemonsPlaces = List<Widget>.generate(
    20,
    (index) => SkeletonPokemonWidget(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBarWidget(
            userUrlPhoto:
                "https://gibao.com.br/wp-content/uploads/2018/11/blog-ph.jpg",
            userName: "Sidinei Silva",
            buttonAddOnTap: () {
              Navigator.pushNamed(context, "/search");
            },
            searchOnChange: (value) {},
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 31),
              child: SizedBox(
                height: 31,
                child: Center(
                  child: Text(
                    "Meus Pokemons",
                    textAlign: TextAlign.center,
                    style: AppTheme.textStyles.titleHome,
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            sliver: SliverGrid.count(
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: pokemonsPlaces,
            ),
          ),
        ],
      ),
    );
  }
}

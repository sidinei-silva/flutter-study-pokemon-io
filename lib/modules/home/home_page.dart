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
                "https://instagram.fpnz6-1.fna.fbcdn.net/v/t51.2885-19/s150x150/119221655_2414577382180223_3861067324090948992_n.jpg?tp=1&_nc_ht=instagram.fpnz6-1.fna.fbcdn.net&_nc_ohc=s0gjSFI-zRcAX_4ZMZi&edm=ABfd0MgBAAAA&ccb=7-4&oh=4f747b026a4635243ee6c5b1c3091a4b&oe=60D417B9&_nc_sid=7bff83",
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

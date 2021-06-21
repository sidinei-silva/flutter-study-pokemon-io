import 'package:flutter/material.dart';
import 'package:pokemons_io/core/app_images.dart';
import 'package:shimmer/shimmer.dart';

class LoadingImagePokemonWidget extends StatelessWidget {
  const LoadingImagePokemonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade400,
      highlightColor: Colors.grey.shade300,
      child: Center(
        child: Image.asset(
          AppImages.placePokemon,
          width: 72,
          height: 72,
        ),
      ),
    );
  }
}

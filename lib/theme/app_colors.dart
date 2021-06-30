import 'package:flutter/material.dart';

abstract class AppColors {
  // Splash Page
  Color get titleSplash;

  Color get appBar;

  // Login Page
  Color get titleLogin;
  Color get subtitleLogin;
  Color get labelButtonLogin;
  Color get backgroundButtonLogin;

  // Home Page
  Color get titleHome;

  //Pokemon Skeleton
  Color get idSkeletonPokemon;
  Color get labelSkeletonPokemon;

  //App Bar
  Color get iconButtonAdd;
  Color get borderButtonAdd;
  Color get userName;

  Color get searchInputBackground;
  Color get searchHint;
  Color get searchText;

  Color get iconArrowBack;

  Color get labelCardPokemon;

  //Pokemon Page
  Color get titlePokemonPage;
  Color get idPokemonPage;
  Color get iconBackPokemonPage;

  Color get labelChipType;

}

class AppColorsDefault implements AppColors {
  @override
  Color get titleSplash => Color(0xFF000000);

  @override
  Color get titleLogin => Color(0xFF000000);

  @override
  Color get subtitleLogin => Color(0xFF000000);

  @override
  Color get labelButtonLogin => Color(0xFF000000);

  @override
  Color get backgroundButtonLogin => Color(0xFFFFFFFF);

  @override
  Color get titleHome => Color(0xFF000000);

  @override
  Color get idSkeletonPokemon => Color(0xFFB8B8B8);

  @override
  Color get labelSkeletonPokemon => Color(0xFFFFFFFF);

  @override
  Color get borderButtonAdd => Color(0xFF000000).withOpacity(0.25);

  @override
  Color get iconButtonAdd => Color(0xFF000000);

  @override
  Color get userName => Color(0xFF000000);

  @override
  Color get appBar => Color(0xFFF5DB13);

  @override
  Color get searchInputBackground => Color(0xFFF2F2F2);

  @override
  Color get searchHint => Color(0xFF212121).withOpacity(0.7);

  @override
  Color get searchText => Color(0xFF212121);

  @override
  Color get iconArrowBack => Color(0xFF666666);

  @override
  Color get labelCardPokemon => Color(0xFFFFFFFF);

  @override
  Color get titlePokemonPage => Color(0xFFFFFFFF);

  @override
  Color get idPokemonPage => Color(0xFFFFFFFF);

  @override
  Color get iconBackPokemonPage => Color(0xFFFFFFFF);

  @override
  Color get labelChipType => Color(0xFFFFFFFF);

}

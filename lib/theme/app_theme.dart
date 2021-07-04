import 'package:pokemons_io/theme/app_colors.dart';
import 'package:pokemons_io/theme/app_gradients.dart';
import 'package:pokemons_io/theme/app_text_styles.dart';
import 'package:pokemons_io/theme/pokemon_colors.dart';

class AppTheme {
  static AppColors get colors => AppColorsDefault();
  static AppGradients get gradients => AppGradientsDefault();
  static AppTextStyles get textStyles => AppTextStylesDefault();
  static PokemonColors get pokemonColor => PokemonColorsDefault();
}

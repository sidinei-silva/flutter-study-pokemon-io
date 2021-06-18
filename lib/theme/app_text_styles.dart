import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokemons_io/theme/app_theme.dart';

abstract class AppTextStyles {
  TextStyle get titleSplash;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle get titleSplash => GoogleFonts.karla(
        fontSize: 36,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.titleSplash,
      );
}

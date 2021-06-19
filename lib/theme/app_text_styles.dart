import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokemons_io/theme/app_theme.dart';

abstract class AppTextStyles {
  // Splash Page
  TextStyle get titleSplash;

  // Login Page
  TextStyle get titleLogin;
  TextStyle get titleLoginBold;
  TextStyle get subtitleLogin;
  TextStyle get labelButtonLogin;

  TextStyle get userName;

  TextStyle get searchHint;
  TextStyle get searchText;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle get titleSplash => GoogleFonts.karla(
        fontSize: 36,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.titleSplash,
      );

  @override
  TextStyle get titleLogin => GoogleFonts.karla(
        fontSize: 42,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.titleLogin,
      );

  @override
  TextStyle get titleLoginBold => GoogleFonts.karla(
        fontSize: 42,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.titleLogin,
      );

  @override
  TextStyle get subtitleLogin => GoogleFonts.karla(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.subtitleLogin,
      );

  @override
  TextStyle get labelButtonLogin => GoogleFonts.karla(
        fontSize: 23,
        fontWeight: FontWeight.bold,
        color: AppTheme.colors.labelButtonLogin,
      );
  @override
  TextStyle get userName => GoogleFonts.karla(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.userName,
      );

  @override
  TextStyle get searchHint => GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: AppTheme.colors.searchHint,
      );

  @override
  TextStyle get searchText => GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: AppTheme.colors.searchText,
      );
}

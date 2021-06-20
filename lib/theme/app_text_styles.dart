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

  // Home Page
  TextStyle get titleHome;

  //Skeleton Pokemon
  TextStyle get idSkeletonPokemon;
  TextStyle get labelSkeletonPokemon;

  TextStyle get userName;

  TextStyle get searchHint;
  TextStyle get searchText;

  TextStyle idCardPokemon(Color colorPokemon);
  TextStyle get labelCardPokemon;
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
  TextStyle get titleHome => GoogleFonts.karla(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: AppTheme.colors.titleHome,
      );

  @override
  TextStyle get idSkeletonPokemon => GoogleFonts.poppins(
      fontSize: 8,
      fontWeight: FontWeight.normal,
      color: AppTheme.colors.idSkeletonPokemon);

  @override
  TextStyle get labelSkeletonPokemon => GoogleFonts.poppins(
        fontSize: 10,
        fontWeight: FontWeight.normal,
        color: AppTheme.colors.labelSkeletonPokemon,
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

  @override
  TextStyle idCardPokemon(Color colorPokemon) => GoogleFonts.poppins(
        fontSize: 8,
        fontWeight: FontWeight.normal,
        color: colorPokemon,
      );

  @override
  TextStyle get labelCardPokemon => GoogleFonts.poppins(
        fontSize: 10,
        fontWeight: FontWeight.normal,
        color: AppTheme.colors.labelCardPokemon,
      );
}

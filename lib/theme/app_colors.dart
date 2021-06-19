import 'package:flutter/material.dart';

abstract class AppColors {
  Color get titleSplash;

  Color get titleLogin;
  Color get subtitleLogin;
  Color get labelButtonLogin;
  Color get backgroundButtonLogin;
  Color get searchInputBackground;
  Color get searchHint;
  Color get searchText;
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
  Color get searchInputBackground => Color(0xFFF2F2F2);

  @override
  Color get searchHint => Color(0xFF212121).withOpacity(0.7);

  @override
  Color get searchText => Color(0xFF212121);
}

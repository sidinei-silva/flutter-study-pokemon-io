import 'package:flutter/material.dart';

abstract class AppColors {
  Color get titleSplash;

  Color get titleLogin;
  Color get subtitleLogin;
  Color get labelButtonLogin;
  Color get backgroundButtonLogin;
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
}

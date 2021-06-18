import 'package:flutter/material.dart';

abstract class AppColors {
  Color get titleSplash;
}

class AppColorsDefault implements AppColors {
  @override
  Color get titleSplash => Color(0xFF000000);
}

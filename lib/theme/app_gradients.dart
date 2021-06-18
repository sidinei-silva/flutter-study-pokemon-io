import 'package:flutter/cupertino.dart';

abstract class AppGradients {
  Gradient get backgroundPrimary;
}

class AppGradientsDefault extends AppGradients {
  @override
  Gradient get backgroundPrimary => LinearGradient(
        colors: [
          Color(0xFFF5DB13),
          Color(0xFFF2B807),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0, 1],
      );
}

import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pokemons_io",
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => Container(),
      },
    );
  }
}

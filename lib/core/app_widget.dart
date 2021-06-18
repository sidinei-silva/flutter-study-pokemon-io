import 'package:flutter/material.dart';
import 'package:pokemons_io/modules/login/login_page.dart';
import 'package:pokemons_io/modules/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pokemons_io",
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}

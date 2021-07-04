import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pokemons_io/core/app_images.dart';
import 'package:pokemons_io/theme/app_theme.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initializeFirebase() async {
    try {
      await Firebase.initializeApp();
      await Future.delayed(Duration(seconds: 2));
      Navigator.pushReplacementNamed(context, "/login");
    } catch (e) {
      Navigator.pushReplacementNamed(context, "/error");
    }
  }

  @override
  void initState() {
    initializeFirebase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppTheme.gradients.backgroundPrimary,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              AppImages.logoSplash,
              width: 250,
              height: 146,
            ),
            SizedBox(
              height: 56,
            ),
            Align(
              child: Text(
                "Pokemons.io",
                style: AppTheme.textStyles.titleSplash,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

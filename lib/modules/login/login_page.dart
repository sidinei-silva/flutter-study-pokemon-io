import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pokemons_io/core/app_images.dart';
import 'package:pokemons_io/modules/login/login_controller.dart';
import 'package:pokemons_io/modules/login/login_service.dart';
import 'package:pokemons_io/modules/login/login_state.dart';
import 'package:pokemons_io/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginController =
      LoginController(loginService: LoginServiceImplementation());

  @override
  void initState() {
    loginController.listen((state) => {
          setState(() {
            if (loginController.loginState is LoginStateSuccess) {
              final user =
                  (loginController.loginState as LoginStateSuccess).user;
              Navigator.pushReplacementNamed(context, "/home", arguments: user);
            }
          }),
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppTheme.gradients.backgroundPrimary,
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.imageLogin,
                      width: 379,
                      height: 290,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Column(
                        children: [
                          Text.rich(
                            TextSpan(
                              text: "Find",
                              style: AppTheme.textStyles.titleLoginBold,
                              children: [
                                TextSpan(
                                  text: " all your favorite ",
                                  style: AppTheme.textStyles.titleLogin,
                                  children: [
                                    TextSpan(
                                      text: "Pokemon",
                                      style: AppTheme.textStyles.titleLoginBold,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            "You can know the type of Pokemon, its strengths, disadvantages and abilities",
                            style: AppTheme.textStyles.subtitleLogin,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    if (loginController.loginState is LoginStateLoading) ...[
                      CircularProgressIndicator(),
                    ] else if (loginController.loginState
                        is LoginStateFailure) ...[
                      Text((loginController.loginState as LoginStateFailure)
                          .message)
                    ] else
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: ConstrainedBox(
                          constraints: BoxConstraints.tightFor(height: 60),
                          child: ElevatedButton(
                            onPressed: () {
                              loginController.googleSignIn();
                            },
                            style: ElevatedButton.styleFrom(
                              primary: AppTheme.colors.backgroundButtonLogin,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(11),
                              ),
                            ),
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    AppImages.iconGoogle,
                                    width: 24,
                                    height: 24,
                                  ),
                                  SizedBox(
                                    width: 32,
                                  ),
                                  Text(
                                    "Entrar com Google",
                                    style: AppTheme.textStyles.labelButtonLogin,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

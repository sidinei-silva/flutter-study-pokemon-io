import 'package:pokemons_io/modules/login/login_service.dart';
import 'package:pokemons_io/modules/login/login_state.dart';

import 'models/user_model.dart';

class LoginController {
  UserModel? user;

  LoginState loginState = LoginStateEmpty();

  final LoginService loginService;

  Function(LoginState state)? onListen;

  LoginController({
    this.user,
    required this.loginService,
  });

  Future<void> googleSignIn() async {
    try {
      update(LoginStateLoading());
      final user = await loginService.googleSignIn();
      update(LoginStateSuccess(user: user));
    } catch (error) {
      update(LoginStateFailure(message: error.toString()));
    }
  }

  void update(LoginState state) {
    loginState = state;
    if (onListen != null) {
      onListen!(loginState);
    }
  }

  void listen(Function(LoginState state) onChange) {
    onListen = onChange;
  }
}

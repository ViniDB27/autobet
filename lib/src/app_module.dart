import 'package:flutter_modular/flutter_modular.dart';

import 'routes/app_routes.dart';
import 'views/home_view.dart';
import 'views/login_view.dart';
import 'views/signup_view.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(
      AppRoutes.home,
      child: (context) => const HomeView(),
      transition: TransitionType.noTransition,
    );
    r.child(
      AppRoutes.login,
      child: (context) => const LoginView(),
      transition: TransitionType.noTransition,
    );
    r.child(
      AppRoutes.signup,
      child: (context) => const SignupView(),
      transition: TransitionType.noTransition,
    );
  }
}

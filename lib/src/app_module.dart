import 'package:flutter_modular/flutter_modular.dart';

import 'views/home_view.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) => const HomeView(),
    );
  }
}
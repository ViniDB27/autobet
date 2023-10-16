import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../routes/app_routes.dart';
import '../theme/padding_values.dart';
import 'navigation_button.dart';
import 'navigation_link.dart';
import 'navigation_logo.dart';

class NavigationbarCustom extends StatelessWidget
    implements PreferredSizeWidget {
  const NavigationbarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: PaddingValues.padding(context),
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavigationLogo(
            onTap: () => Modular.to.pushReplacementNamed(AppRoutes.home),
          ),
          SizedBox(
            child: Row(
              children: renderAllLinks(),
            ),
          ),
          SizedBox(
            child: Row(
              children: [
                NavigationButton(
                  text: 'Entrar',
                  onTap: () => Modular.to.pushReplacementNamed(AppRoutes.login),
                ),
                const SizedBox(width: 20),
                NavigationButton(
                  text: 'Cadastrar',
                  inverse: true,
                  onTap: () =>
                      Modular.to.pushReplacementNamed(AppRoutes.signup),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> renderAllLinks() {
    return [
      NavigationLink(
        text: "Início",
        active: true,
        onTap: () => Modular.to.pushReplacementNamed(AppRoutes.home),
      ),
      const SizedBox(
        width: 30,
      ),
      NavigationLink(
        text: "Histórico",
        onTap: () => Modular.to.pushReplacementNamed(AppRoutes.history),
      ),
      const SizedBox(width: 30),
      const NavigationLink(
        text: "Meus Dados",
      ),
      const SizedBox(width: 30),
      const NavigationLink(
        text: "Como Funciona",
      ),
    ];
  }

  @override
  Size get preferredSize => const Size.fromHeight(80.0);
}

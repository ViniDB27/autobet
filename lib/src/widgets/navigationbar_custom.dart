import 'package:flutter/material.dart';

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
          const NavigationLogo(),
          SizedBox(
            child: Row(
              children: renderAllLinks(),
            ),
          ),
          const SizedBox(
            child: Row(
              children: [
                NavigationButton(
                  text: 'Entrar',
                ),
                SizedBox(width: 20),
                NavigationButton(
                  text: 'Cadastrar',
                  inverse: true,
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
      const NavigationLink(
        text: "Início",
        active: true,
      ),
      const SizedBox(
        width: 30,
      ),
      const NavigationLink(
        text: "Histórico",
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

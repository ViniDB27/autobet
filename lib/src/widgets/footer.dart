import 'package:flutter/material.dart';

import '../theme/padding_values.dart';
import 'footer_link.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 471,
      padding: PaddingValues.padding(context, horizontalPecent: 0.20),
      decoration: const BoxDecoration(
        color: Color(0xFF0360D9),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    "AutoBeat",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 33),
                  SelectableText(
                    "Nosso sistema de classificação automática de ECG \ncombina tecnologia de ponta com experiência \nmédica. Desenvolvido para agilizar diagnósticos e \napoiar profissionais de saúde, utiliza algoritmos de \nInteligência Artificial para análises precisas e \neficientes de ECGs. Comprometidos em melhorar o \ncuidado do paciente e facilitar a vida dos médicos. \nExperimente hoje e experimente a diferença.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    "Links Úteis",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 33),
                  FooterLink(
                    text: "Contatos",
                  ),
                  SizedBox(height: 5),
                  FooterLink(
                    text: "Política de Privacidade",
                  ),
                  SizedBox(height: 5),
                  FooterLink(
                    text: "Como Funciona",
                  ),
                  SizedBox(height: 5),
                  FooterLink(
                    text: "Nossa Missão",
                  ),
                  SizedBox(height: 5),
                  FooterLink(
                    text: "Nosso Time",
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 60),
          Container(
            width: double.infinity,
            height: 1,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          const SelectableText(
            "2023 Todos os dirietos reservados",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

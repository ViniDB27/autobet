import 'package:flutter/material.dart';

class BannerCustom extends StatelessWidget {
  const BannerCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 20),
      height: 600,
      width: size.width,
      child: const Column(
        children: [
          Text(
            "Seu Assistente de Confiança para Classificação de Eletrocardiogramas",
          ),
          Text(
            "Acelere diagnósticos, tome decisões informadas e simplifique o cuidado do paciente com nossa IA",
          ),
        ],
      ),
    );
  }
}

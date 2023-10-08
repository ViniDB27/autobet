import 'package:flutter/material.dart';

import '../theme/padding_values.dart';

class BannerCustom extends StatelessWidget {
  const BannerCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: PaddingValues.padding(context),
      height: 600,
      width: size.width,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText.rich(
            TextSpan(
              text: "Seu Assistente de ",
              style: TextStyle(
                color: Color(0xFF021526),
                fontSize: 64,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,
              ),
              children: [
                TextSpan(
                  text: "Confiança\n",
                  style: TextStyle(
                    color: Color(0xFF0360D9),
                    fontSize: 64,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                  ),
                  children: [
                    TextSpan(
                      text: "para Classificação de \nEletrocardiogramas",
                      style: TextStyle(
                        color: Color(0xFF021526),
                        fontSize: 64,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          SelectableText(
            "Acelere diagnósticos, tome decisões informadas e \nsimplifique o cuidado do paciente com nossa IA",
            style: TextStyle(
              color: Color(0xFF163048),
              fontSize: 20,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

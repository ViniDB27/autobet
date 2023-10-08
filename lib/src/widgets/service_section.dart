import 'package:flutter/material.dart';

import '../theme/padding_values.dart';
import 'service_card.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: PaddingValues.padding(context),
      width: size.width,
      height: 600,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SelectableText(
            "Sobre o Assistente",
            style: TextStyle(
              color: Color(0xFF2E2E2E),
              fontSize: 48,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ServiceCard(),
              SizedBox(width: 30),
              ServiceCard(active: true),
              SizedBox(width: 30),
              ServiceCard(),
            ],
          ),
        ],
      ),
    );
  }
}

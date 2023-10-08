
import 'package:flutter/material.dart';

class InformativeLine extends StatelessWidget {
  const InformativeLine({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(10),
      width: size.width,
      height: 134,
      color: const Color(0xFF0360D9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectableText(
                "100+",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SelectableText(
                "Usuários Ativos",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(width: size.width / 8),
          Container(
            height: 100,
            width: 1,
            color: Colors.white,
          ),
          SizedBox(width: size.width / 8),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectableText(
                "24/7",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SelectableText(
                "Supporte Online",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

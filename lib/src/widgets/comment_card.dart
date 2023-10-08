import 'package:flutter/material.dart';

import 'mini_avatar_cinrcle.dart';
import 'start.dart';

class CommentCard extends StatelessWidget {
  const CommentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 590,
      height: 305,
      padding: const EdgeInsets.all(40),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFFA8A8A8),
        ),
      ),
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  MiniAvatarCircle(),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        "Dra. Thalita Nascimento",
                        style: TextStyle(
                          color: Color(0xFF2E2E2E),
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 5),
                      SelectableText(
                        "06/10/2023",
                        style: TextStyle(
                          color: Color(0xFF2E2E2E),
                          fontSize: 12,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Starts(),
            ],
          ),
          SizedBox(height: 40),
          SelectableText(
            "Achei esse produto simplesmente incrível e poderoso! Ele tornou tudo muito mais fácil e eficiente aqui na clínica. Estou realmente impressionada com o impacto que teve em nossa rotina. Vou continuar usando e acompanhando as atualizações com certeza 💓.",
            style: TextStyle(
              color: Color(0xFF2E2E2E),
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

import 'package:flutter/material.dart';

import 'comment_card.dart';
import 'mini_avatar_cinrcle.dart';

class CommentSection extends StatelessWidget {
  const CommentSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 616,
      decoration: const BoxDecoration(
        color: Color(0xFFE1EEFF),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText.rich(
                TextSpan(
                  text: "O que os ",
                  style: TextStyle(
                    color: Color(0xFF021526),
                    fontSize: 48,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                  ),
                  children: [
                    TextSpan(
                      text: "Profissionais da \nsaúde",
                      style: TextStyle(
                        color: Color(0xFF0360D9),
                        fontSize: 48,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                      ),
                      children: [
                        TextSpan(
                          text: " estão dizendo?",
                          style: TextStyle(
                            color: Color(0xFF021526),
                            fontSize: 48,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              SelectableText(
                "Estamos em constante evolução, ouvindo a comunidade e \nresolvendo desafios juntos.",
                style: TextStyle(
                  color: Color(0xFF2E2E2E),
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Stack(
                    children: [
                      MiniAvatarCircle(),
                      Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: MiniAvatarCircle(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 80),
                        child: MiniAvatarCircle(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 120),
                        child: MiniAvatarCircle(),
                      ),
                    ],
                  ),
                  SizedBox(width: 50),
                  SelectableText(
                    "80+ Comentários",
                    style: TextStyle(
                      color: Color(0xFF2E2E2E),
                      fontSize: 16,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(width: 60),
          CommentCard(),
        ],
      ),
    );
  }
}

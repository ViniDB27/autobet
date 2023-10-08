import 'package:flutter/material.dart';

class NewsLatter extends StatelessWidget {
  const NewsLatter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: 616,
      child: Center(
        child: Container(
          width: 1200,
          height: 350,
          decoration: BoxDecoration(
            color: const Color(0xFFCCECEB),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SelectableText(
                "Fique atualizado na tecnologia cardiológica. \nInscreva-se para receber novidades diárias por e-mail.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 40),
              Container(
                width: 950,
                height: 85,
                padding: const EdgeInsets.only(left: 30, right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(85 / 2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.person,
                          size: 44,
                          color: Colors.black,
                        ),
                        SizedBox(width: 10),
                        SelectableText(
                          "Digite seu Email",
                          style: TextStyle(
                            color: Color(0xFF1C1C1C),
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: const Color(0xFF0360D9),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.email,
                              size: 30,
                              color: Color.fromARGB(135, 207, 204, 204),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

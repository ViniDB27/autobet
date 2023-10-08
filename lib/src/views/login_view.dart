import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/app_images.dart';
import '../widgets/footer.dart';
import '../widgets/form_imput.dart';
import '../widgets/navigationbar_custom.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const NavigationbarCustom(),
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          child: Column(
            children: [
              SizedBox(
                width: size.width,
                height: 800,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SelectableText(
                          "AutoBeat",
                          style: GoogleFonts.smoochSans(
                            color: const Color(0xFF1C1C1C),
                            fontSize: 80,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SelectableText(
                          "Entre para utilizar o Assistente.",
                          style: GoogleFonts.poppins(
                            color: const Color(0xFF1C1C1C),
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 25),
                        FormInput(
                          label: "Email",
                          icon: Icons.email,
                          inputController: emailController,
                        ),
                        const SizedBox(height: 25),
                        FormInput(
                          label: "Senha",
                          icon: Icons.lock,
                          inputController: passwordController,
                          obscureText: true,
                        ),
                      ],
                    ),
                    const SizedBox(width: 125),
                    Image.asset(
                      AppImages.heart,
                      width: 638,
                      height: 700,
                    )
                  ],
                ),
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

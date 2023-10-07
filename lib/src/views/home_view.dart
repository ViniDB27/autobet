import 'package:flutter/material.dart';

import '../widgets/banner_custom.dart';
import '../widgets/informative_line.dart';
import '../widgets/navigationbar_custom.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const NavigationbarCustom(),
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          child: Column(
            children: [
              BannerCustom(),
              InformativeLine(),
            ],
          ),
        ),
      ),
    );
  }
}

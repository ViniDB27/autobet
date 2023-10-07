import 'package:flutter/widgets.dart';

class NavigationLogo extends StatelessWidget {
  const NavigationLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: "Auto",
        style: TextStyle(
          color: Color(0xFF021526),
          fontSize: 28,
          fontWeight: FontWeight.w800,
          fontStyle: FontStyle.normal,
        ),
        children: [
          TextSpan(
            text: "Beat",
            style: TextStyle(
              color: Color(0xFF0360D9),
              fontSize: 28,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.normal,
            ),
          ),
        ],
      ),
    );
  }
}

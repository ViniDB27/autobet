import 'package:flutter/material.dart';

class FooterLink extends StatelessWidget {
  const FooterLink({
    super.key,
    required this.text,
    this.onTap,
  });

  final void Function()? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

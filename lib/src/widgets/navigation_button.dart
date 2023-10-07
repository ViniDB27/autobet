import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton({
    super.key,
    required this.text,
    this.onTap,
    this.inverse = false,
  });

  final String text;
  final void Function()? onTap;
  final bool inverse;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 120,
        height: 40,
        decoration: BoxDecoration(
          color: inverse ? const Color(0xFF0360D9) : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: const Color(0xFF0360D9),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: inverse ? Colors.white : const Color(0xFF0360D9),
            ),
          ),
        ),
      ),
    );
  }
}

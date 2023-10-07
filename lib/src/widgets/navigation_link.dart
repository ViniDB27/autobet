import 'package:flutter/material.dart';

class NavigationLink extends StatelessWidget {
  const NavigationLink({
    super.key,
    required this.text,
    this.onTap,
    this.active = false,
  });

  final void Function()? onTap;
  final String text;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: active
              ? const Border(
                  bottom: BorderSide(
                    color: Color(0xFF0360D9),
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                )
              : null,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: active ? const Color(0xFF0360D9) : const Color(0xFF0D2B46),
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

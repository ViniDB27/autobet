import 'package:flutter/material.dart';

class MiniAvatarCircle extends StatelessWidget {
  const MiniAvatarCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 62,
      height: 62,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(62 / 2),
        color: const Color(0xFFE6F5FC),
        border: Border.all(
          color: const Color.fromARGB(68, 53, 53, 53),
        ),
      ),
      child: Center(
        child: Icon(
          Icons.person,
          size: 50,
          color: const Color.fromARGB(255, 158, 183, 194).withOpacity(0.20),
        ),
      ),
    );
  }
}

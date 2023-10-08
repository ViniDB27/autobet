import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key,
    this.active = false,
  });

  final bool active;

  final double _avatarSize = 92;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 285,
      height: 285,
      padding: const EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 30,
      ),
      decoration: BoxDecoration(
        color: active ? const Color(0xFF0360D9) : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: active ? const Color(0xFF0360D9) : const Color(0xFF021526),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: _avatarSize,
            height: _avatarSize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(_avatarSize / 2),
              color: const Color(0xFFE6F5FC),
            ),
            child: Center(
              child: Icon(
                Icons.person,
                size: 60,
                color:
                    const Color.fromARGB(255, 158, 183, 194).withOpacity(0.20),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const SelectableText(
            "Treinamento",
            style: TextStyle(
              color: Color(0xFF021526),
              fontSize: 18,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SelectableText(
            "Pontuações calculadas durante a \netapa de treinamento do modelo \nsão apresentadas no relatório.",
            style: TextStyle(
              color: Color(0xFF021526),
              fontSize: 14,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

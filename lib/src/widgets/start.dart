import 'package:flutter/material.dart';

class Starts extends StatelessWidget {
  const Starts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.star,
          size: 40,
          color: Color(0xFFF5BF00),
        ),
        Icon(
          Icons.star,
          size: 40,
          color: Color(0xFFF5BF00),
        ),
        Icon(
          Icons.star,
          size: 40,
          color: Color(0xFFF5BF00),
        ),
        Icon(
          Icons.star,
          size: 40,
          color: Color(0xFFF5BF00),
        ),
        Icon(
          Icons.star,
          size: 40,
          color: Color(0xFFF5BF00),
        )
      ],
    );
  }
}
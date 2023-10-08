import 'package:flutter/material.dart';

class PaddingValues {
  static padding(
    BuildContext context, {
    double horizontalPecent = 0.15,
    double vertical = 20,
  }) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    return EdgeInsets.symmetric(
      horizontal: (width * horizontalPecent),
      vertical: 20,
    );
  }
}

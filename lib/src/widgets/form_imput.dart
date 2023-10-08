import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormInput extends StatelessWidget {
  const FormInput({
    required this.icon,
    required this.label,
    this.inputController,
    this.obscureText = false,
    super.key,
  });

  final TextEditingController? inputController;
  final IconData? icon;
  final String label;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 364,
      height: 52,
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 14,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Center(
        child: TextFormField(
          // validator: Validate.emailValidate,
          controller: inputController,
          style: GoogleFonts.poppins(
            color: const Color(0xFF1C1C1C),
            fontSize: 14,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
          ),
          obscureText: obscureText,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            icon: Icon(
              icon,
              color: const Color(0xFF1C1C1C),
            ),
            label: Text(
              label,
              style: GoogleFonts.poppins(
                color: const Color(0xFF1C1C1C),
                fontSize: 14,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
              ),
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

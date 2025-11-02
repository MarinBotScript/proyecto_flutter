import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Botón personalizado reutilizable
class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color backgroundColor;
  final Color textColor;
  final double width;
  final double height;
  final double fontSize;
  final FontWeight fontWeight;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.backgroundColor = const Color(0xFF427850),
    this.textColor = const Color(0xFFFFFFFF),
    this.width = 274,
    this.height = 45,
    this.fontSize = 13,
    this.fontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(4),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: GoogleFonts.inter(
            color: textColor,
            fontWeight: fontWeight,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
// lib/pages/components_sampling/numbered_badge.dart
import 'package:flutter/material.dart';

/// Badge con número y degradado para puntos de muestreo
class NumberedBadge extends StatelessWidget {
  final String number;
  final double size;
  final double fontSize;

  const NumberedBadge({
    super.key,
    required this.number,
    this.size = 55,
    this.fontSize = 24,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF7EC3CF), // azul verdoso claro
            Color(0xFF254D35), // verde oscuro
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Center(
        child: Text(
          number,
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
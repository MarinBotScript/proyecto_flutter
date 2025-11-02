import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Fila de información para puntos de muestreo (ej: Periodo, Radio, Muestras)
class SamplingPointInfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color iconColor;
  final Color labelColor;
  final Color valueColor;
  final double iconSize;
  final double fontSize;

  const SamplingPointInfoRow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    this.iconColor = const Color(0xFF427850),
    this.labelColor = const Color(0xFF656565),
    this.valueColor = const Color(0xFFC0BFBF),
    this.iconSize = 14,
    this.fontSize = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: iconSize, color: iconColor),
        SizedBox(width: iconSize == 14 ? 5 : 4),
        Text(
          label,
          style: GoogleFonts.inter(
            color: labelColor,
            fontWeight: FontWeight.bold,
            fontSize: fontSize,
          ),
        ),
        Text(
          value,
          style: GoogleFonts.inter(
            color: valueColor,
            fontSize: fontSize,
          ),
        ),
      ],
    );
  }
}
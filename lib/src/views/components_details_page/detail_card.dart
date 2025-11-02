import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Tarjeta de detalle (ej: Hábitat, Vegetación, Altura)
class DetailCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final Color backgroundColor;
  final Color borderColor;
  final Color iconColor;
  final Color titleColor;
  final Color valueColor;
  final double width;
  final double height;

  const DetailCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.backgroundColor,
    required this.borderColor,
    required this.iconColor,
    required this.titleColor,
    this.valueColor = const Color(0xFF656565),
    this.width = 148,
    this.height = 41,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: borderColor, width: 1),
      ),
      padding: const EdgeInsets.only(left: 4, top: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: iconColor, size: 16),
              const SizedBox(width: 4),
              Text(
                title,
                style: GoogleFonts.inter(
                  color: titleColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              value,
              style: GoogleFonts.inter(
                color: valueColor,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
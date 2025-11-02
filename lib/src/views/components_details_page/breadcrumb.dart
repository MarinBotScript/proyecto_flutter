import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Componente de navegación breadcrumb
class Breadcrumb extends StatelessWidget {
  final IconData icon;
  final String firstLevel;
  final String secondLevel;
  final Color iconColor;
  final Color textColor;
  final Color dividerColor;

  const Breadcrumb({
    super.key,
    required this.icon,
    required this.firstLevel,
    required this.secondLevel,
    this.iconColor = const Color(0xFF254D35),
    this.textColor = const Color(0xFF254D35),
    this.dividerColor = const Color(0xFF254D35),
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10),
        Icon(icon, color: iconColor),
        const SizedBox(width: 8),
        Text(
          firstLevel,
          style: GoogleFonts.inter(
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const SizedBox(width: 10),
        Container(
          width: 1,
          height: 28,
          color: dividerColor,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            secondLevel,
            style: GoogleFonts.inter(
              color: textColor,
              fontSize: 12,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Contenedor informativo con icono, título y filas de datos clave-valor
class InfoBox extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color backgroundColor;
  final Color borderColor;
  final Color iconColor;
  final Color titleColor;
  final List<InfoBoxRow> rows;

  const InfoBox({
    super.key,
    required this.icon,
    required this.title,
    required this.backgroundColor,
    required this.borderColor,
    required this.iconColor,
    required this.titleColor,
    required this.rows,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 298,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: borderColor, width: 1),
      ),
      padding: const EdgeInsets.all(6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: iconColor, size: 20),
              const SizedBox(width: 5),
              Text(
                title,
                style: GoogleFonts.inter(
                  color: titleColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          ...rows.map((row) => Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      row.label,
                      style: GoogleFonts.inter(
                        color: row.labelColor ?? const Color(0xFF254D35),
                        fontSize: 10,
                        fontWeight: row.boldLabel ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                    Text(
                      row.value,
                      style: GoogleFonts.inter(
                        color: row.valueColor ?? const Color(0xFF656565),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

/// Clase helper para las filas del InfoBox
class InfoBoxRow {
  final String label;
  final String value;
  final Color? labelColor;
  final Color? valueColor;
  final bool boldLabel;

  InfoBoxRow({
    required this.label,
    required this.value,
    this.labelColor,
    this.valueColor,
    this.boldLabel = false,
  });
}
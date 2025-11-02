// lib/pages/components_sampling/coordinates_card.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Tarjeta para mostrar coordenadas geográficas
class CoordinatesCard extends StatelessWidget {
  final String latitude;
  final String longitude;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;

  const CoordinatesCard({
    super.key,
    required this.latitude,
    required this.longitude,
    this.backgroundColor = const Color(0xFFE7EEEE),
    this.borderColor = const Color(0xFF7FA6A3),
    this.textColor = const Color(0xFF467472),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderColor, width: 1),
      ),
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.public, color: textColor, size: 24),
              const SizedBox(width: 6),
              Text(
                'Coordenadas',
                style: GoogleFonts.inter(
                  color: textColor,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Latitud: ',
                  style: GoogleFonts.inter(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                TextSpan(
                  text: latitude,
                  style: GoogleFonts.inter(
                    color: textColor,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Longitud: ',
                  style: GoogleFonts.inter(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                TextSpan(
                  text: longitude,
                  style: GoogleFonts.inter(
                    color: textColor,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
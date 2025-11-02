import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Tarjeta pequeña de información (ej: Nombre, Ciudad, País)
class InfoCard extends StatelessWidget {
  final String titulo;
  final String valor;
  final double width;
  final double height;

  const InfoCard({
    super.key,
    required this.titulo,
    required this.valor,
    this.width = 148,
    this.height = 41,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(67, 136, 95, 0.10),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: const Color(0xFFB0C7B3),
          width: 1,
        ),
      ),
      padding: const EdgeInsets.only(left: 5, top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titulo,
            style: GoogleFonts.inter(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF43885F),
            ),
          ),
          Text(
            valor,
            style: GoogleFonts.inter(
              fontSize: 12,
              color: const Color(0xFF656565),
            ),
          ),
        ],
      ),
    );
  }
}
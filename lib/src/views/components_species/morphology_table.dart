// lib/src/views/components_species/morphology_table.dart
import 'package:flutter/material.dart';

/// Tabla de morfología con datos estructurados
class MorphologyTable extends StatelessWidget {
  final String totalLength;
  final String tarsusLength;
  final String tailLength;
  final String wingLength;
  final String billLength;

  const MorphologyTable({
    super.key,
    required this.totalLength,
    required this.tarsusLength,
    required this.tailLength,
    required this.wingLength,
    required this.billLength,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      decoration: BoxDecoration(
        color: const Color(0xFFD9E8E4),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFF6EA185)),
      ),
      child: Column(
        children: [
          // Fila 1: Longitud total
          _buildSingleRow('Longitud total', totalLength, hasBottomBorder: true),

          // Fila 2: Longitud del tarso y cola
          Row(
            children: [
              Expanded(
                child: _buildRowWithIcon('Longitud del tarso', tarsusLength,
                    hasRightBorder: true, hasBottomBorder: true),
              ),
              Expanded(
                child: _buildRowWithIcon('Longitud de la cola', tailLength,
                    hasBottomBorder: true),
              ),
            ],
          ),

          // Fila 3: Longitud del ala y pico
          Row(
            children: [
              Expanded(
                child: _buildRowWithIcon('Longitud del ala', wingLength,
                    hasRightBorder: true),
              ),
              Expanded(
                child: _buildRowWithIcon('Longitud del pico', billLength),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSingleRow(String label, String value,
      {bool hasBottomBorder = false}) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        border: hasBottomBorder
            ? const Border(bottom: BorderSide(color: Color(0xFF6EA185)))
            : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Color(0xFF2F6C47),
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            value,
            style: const TextStyle(
              color: Color(0xFF2F6C47),
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRowWithIcon(String label, String value,
      {bool hasRightBorder = false, bool hasBottomBorder = false}) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border(
          right: hasRightBorder
              ? const BorderSide(color: Color(0xFF6EA185))
              : BorderSide.none,
          bottom: hasBottomBorder
              ? const BorderSide(color: Color(0xFF6EA185))
              : BorderSide.none,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(Icons.straighten, color: Color(0xFF2F6C47), size: 18),
          const SizedBox(width: 6),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    color: Color(0xFF2F6C47),
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  value,
                  style: const TextStyle(
                    color: Color(0xFF2F6C47),
                    fontSize: 12,
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
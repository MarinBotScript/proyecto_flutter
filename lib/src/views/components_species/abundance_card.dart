// lib/src/views/components_species/abundance_card.dart
import 'package:flutter/material.dart';

/// Tarjeta para mostrar información de abundancia poblacional
class AbundanceCard extends StatelessWidget {
  final int abundance;
  final int males;
  final int females;
  final int undeterminedSex;
  final int adults;
  final int juveniles;

  const AbundanceCard({
    super.key,
    required this.abundance,
    required this.males,
    required this.females,
    required this.undeterminedSex,
    required this.adults,
    required this.juveniles,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Cuadro principal Abundancia
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: const Color(0xFFD9E8E4),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.public, color: Color(0xFF427850), size: 20),
              const SizedBox(width: 4),
              Text(
                'Abundancia: $abundance',
                style: const TextStyle(
                  color: Color(0xFF427850),
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),

        // Primera fila: Machos y Hembras
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildChip('♂ Cantidad de Machos: $males'),
            const SizedBox(width: 8),
            _buildChip('♀ Cantidad de Hembras: $females'),
          ],
        ),
        const SizedBox(height: 6),

        // Segunda fila: Sexo indeterminado
        _buildChip('⚥ Cantidad con sexo indeterminado: $undeterminedSex'),
        const SizedBox(height: 6),

        // Tercera fila: Adultos y Jóvenes
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildChip('Cantidad de Adultos: $adults'),
            const SizedBox(width: 8),
            _buildChip('Cantidad de Jóvenes: $juveniles'),
          ],
        ),
      ],
    );
  }

  Widget _buildChip(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFD9E8E4),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: const Color(0xFF7FA6A3)),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF427850),
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
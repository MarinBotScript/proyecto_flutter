// lib/src/views/components_species/observation_box.dart
import 'package:flutter/material.dart';

/// Caja para mostrar información de observación (método de detección, distancia)
class ObservationBox extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;

  const ObservationBox({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.backgroundColor,
    required this.borderColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 60,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: borderColor),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Icon(icon, color: textColor, size: 20),
              const SizedBox(width: 6),
              Text(
                title,
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.only(left: 28),
            child: Text(
              value,
              style: TextStyle(
                color: textColor,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
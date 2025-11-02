import 'package:flutter/material.dart';

/// Contenedor con icono para puntos de muestreo
class SamplingPointIconBox extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double iconSize;
  final double padding;

  const SamplingPointIconBox({
    super.key,
    required this.icon,
    this.backgroundColor = const Color(0xFF254D35),
    this.iconColor = Colors.white,
    this.iconSize = 35,
    this.padding = 8,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(6),
      ),
      padding: EdgeInsets.all(padding),
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}
import 'package:flutter/material.dart';

/// Divider centrado con ancho específico
class CustomDivider extends StatelessWidget {
  final double width;
  final Color color;
  final double height;
  final double thickness;

  const CustomDivider({
    super.key,
    this.width = 312,
    this.color = const Color(0xFFC0BFBF),
    this.height = 35,
    this.thickness = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width,
        child: Divider(
          color: color,
          height: height,
          thickness: thickness,
        ),
      ),
    );
  }
}
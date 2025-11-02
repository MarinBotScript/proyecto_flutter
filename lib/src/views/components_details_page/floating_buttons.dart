import 'package:flutter/material.dart';

/// Botón flotante circular
class FloatingCircleButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final Color backgroundColor;
  final Color iconColor;
  final Color? borderColor;
  final double size;
  final double iconSize;
  final bool showShadow;
  final double opacity;

  const FloatingCircleButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.backgroundColor = const Color(0xFF254D35),
    this.iconColor = Colors.white,
    this.borderColor,
    this.size = 50,
    this.iconSize = 28,
    this.showShadow = true,
    this.opacity = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: backgroundColor.withOpacity(opacity),
          shape: BoxShape.circle,
          border: borderColor != null ? Border.all(color: borderColor!) : null,
          boxShadow: showShadow
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ]
              : null,
        ),
        child: Icon(icon, color: iconColor, size: iconSize),
      ),
    );
  }
}

/// Botón de navegación Home (esquina superior derecha)
class HomeButton extends StatelessWidget {
  final VoidCallback onTap;

  const HomeButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingCircleButton(
      icon: Icons.home,
      onTap: onTap,
      borderColor: Colors.white,
    );
  }
}

/// Botón de retroceso (esquina superior izquierda)
class BackButton extends StatelessWidget {
  final VoidCallback? onTap;

  const BackButton({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingCircleButton(
      icon: Icons.arrow_back,
      onTap: onTap ?? () => Navigator.pop(context),
      backgroundColor: Colors.white,
      iconColor: const Color(0xFF254D35),
      opacity: 0.8,
      size: 40,
      iconSize: 24,
    );
  }
}
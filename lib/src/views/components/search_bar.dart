import 'package:flutter/material.dart';

/// Barra de búsqueda reutilizable.
/// - [controller]: TextEditingController (externo para controlar desde la página).
/// - [onChanged]: callback cuando cambia el texto.
/// - [onClear]: callback para limpiar.
class ProjectSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onClear;
  final String hintText;

  const ProjectSearchBar({
    super.key,
    required this.controller,
    this.onChanged,
    this.onClear,
    this.hintText = 'Buscar proyectos...',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              SizedBox(width: 12),
              Icon(Icons.search, color: Color(0xFF254D35)),
              SizedBox(width: 12),
              // separación vertical
              // la línea vertical
            ],
          ),
          prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
          // línea separadora manual
          // We add a small widget to simulate the vertical line next to the icon and text
          // but placed using suffix/prefix isn't perfect — keep simple:
          hintText: hintText,
          hintStyle: const TextStyle(color: Color(0xFFC0BFBF)),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 14),
          suffixIcon: IconButton(
            icon: const Icon(Icons.close, color: Color(0xFF254D35)),
            onPressed: () {
              controller.clear();
              if (onClear != null) onClear!();
            },
          ),
        ),
      ),
    );
  }
}

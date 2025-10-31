import 'package:flutter/material.dart';

/// Fondo con imagen en la parte superior y un contenedor gris redondeado
/// que se posiciona a una distancia fija respecto al top (no cambia con contentHeight).
/// - [topImageAsset]: ruta del asset de la imagen superior.
/// - [topImageHeight]: altura fija de la zona superior con la imagen.
/// - [topOverlap]: cuánto se superpone el contenedor gris sobre la imagen (p. ej. 30).
/// - [contentHeight]: altura que debe tener el contenedor gris (la clase que lo llama la controla).
/// - [child]: contenido dentro del contenedor gris (p. ej. una ListView).
/// - [searchBar]: opcional, widget que se colocará sobre la imagen (ej. la barra de búsqueda).
class BackgroundContainer extends StatelessWidget {
  final String topImageAsset;
  final double topImageHeight;
  final double topOverlap;
  final double contentHeight;
  final Widget child;
  final Widget? searchBar;
  final EdgeInsetsGeometry horizontalPadding;

  const BackgroundContainer({
    super.key,
    this.topImageAsset = 'assets/images/fondo.jpg',
    required this.contentHeight,
    required this.child,
    this.topImageHeight = 500,
    this.topOverlap = 10,
    this.searchBar,
    this.horizontalPadding = const EdgeInsets.symmetric(horizontal: 20),
  });

  @override
  Widget build(BuildContext context) {
    // posición fija del contenedor gris (no depende de contentHeight)
    final double containerTop = topImageHeight - topOverlap;

    return SizedBox(
      width: double.infinity,
      // total height = imagen superior (fija) + contentHeight (variable hacia abajo)
      height: topImageHeight + contentHeight,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Imagen de fondo (solo en la parte superior)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: topImageHeight,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(topImageAsset),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
          ),

          // Barra de búsqueda (si se pasa) se coloca encima de la imagen con padding lateral
          if (searchBar != null)
            Positioned(
              top: topImageHeight * 0.5, // ajustable si quieres la barra más arriba/abajo
              left: 0,
              right: 0,
              child: Padding(
                padding: horizontalPadding,
                child: searchBar!,
              ),
            ),

          // Contenedor gris redondeado (posición fija en la pantalla con altura controlada por quien llama)
          Positioned(
            top: containerTop,
            left: 0,
            right: 0,
            child: Container(
              // ocupa todo el ancho; si quieres margen lateral puedes envolver con Padding desde el parent
              height: contentHeight,
              decoration: const BoxDecoration(
                color: Color(0xFFEAEBEB),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 18, 16, 16),
                child: child,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

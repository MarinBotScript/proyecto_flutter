import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccessPage extends StatelessWidget {
  const AccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Fondo con imagen
          Image.asset(
            'assets/images/login_fondo.jpg',
            fit: BoxFit.cover,
          ),

          // Botón centrado
          Positioned(
            bottom: 150, // distancia desde abajo (ajústala)
            left: 0,
            right: 0, // esto centra horizontalmente
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'projects_page');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4E8A8A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  elevation: 7,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: Text(
                  'INGRESAR',
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

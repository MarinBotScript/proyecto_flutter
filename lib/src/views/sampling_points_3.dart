import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SamplingPoints3 extends StatefulWidget {
  const SamplingPoints3({super.key});

  @override
  State<SamplingPoints3> createState() => _SamplingPoints3();
}

class _SamplingPoints3 extends State<SamplingPoints3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// 🔹 Fondo fijo (no se mueve con el scroll)
          Positioned.fill(
            child: Image.asset('assets/images/fondo.jpg', fit: BoxFit.cover),
          ),

          /// 🔹 Contenido desplazable encima del fondo
          SingleChildScrollView(
            child: IntrinsicHeight(
              child: Column(
                children: [
                  const SizedBox(height: 90),
              
                  const SizedBox(height: 20),
              
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFEAEBEB),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(width: 10),
                            const Icon(Icons.flag, color: Color(0xFF254D35)),
                            const SizedBox(width: 8),
                            Text(
                              'PUNTOS DE MUESTREO',
                              style: GoogleFonts.inter(
                                color: const Color(0xFF254D35),
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
              
                        const SizedBox(height: 10),
              
                        /// 🔹 Tarjeta de ejemplo
                        Center(
                          child: SizedBox(
                            width: 350,
                            height: 187,
                            child: GestureDetector(
                              onTap: () {
                                // 👇 Navega a otra página (usa la ruta que definiste en tu MaterialApp)
                                Navigator.pushNamed(context, 'sampling_point_3_1');
                              },
                              child: Card(
                                color: Colors.white,
                                elevation: 7,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // 🔹 Título principal
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Text(
                                        'PUNTO DE MUESTREO 1',
                                        style: GoogleFonts.inter(
                                          color: const Color(0xFF254D35),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: SizedBox(
                                        width: 310,
                                        child: const Divider(
                                          color: Color(0xFFC0BFBF),
                                          height: 14,
                                          thickness: 1,
                                        ),
                                      ),
                                    ),
              
                                    // 🔹 Fila con ícono y descripción
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xFF254D35),
                                            borderRadius: BorderRadius.circular(
                                              6,
                                            ),
                                          ),
                                          padding: const EdgeInsets.all(8),
                                          child: const Icon(
                                            Icons.remove_red_eye_rounded,
                                            color: Colors.white,
                                            size: 35,
                                          ),
                                        ),
                                        const SizedBox(width: 15),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Punto de observación',
                                              style: GoogleFonts.inter(
                                                color: const Color(0xFF656565),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.calendar_month,
                                                  size: 14,
                                                  color: Color(0xFF427850),
                                                ),
                                                const SizedBox(width: 5),
                                                Text(
                                                  'Periodo de muestreo: ',
                                                  style: GoogleFonts.inter(
                                                    color: const Color(
                                                      0xFF656565,
                                                    ),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                Text(
                                                  '30 días',
                                                  style: GoogleFonts.inter(
                                                    color: const Color(
                                                      0xFFC0BFBF,
                                                    ),
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.radio_button_checked,
                                                  size: 14,
                                                  color: Color(0xFF427850),
                                                ),
                                                const SizedBox(width: 5),
                                                Text(
                                                  'Radio: ',
                                                  style: GoogleFonts.inter(
                                                    color: const Color(
                                                      0xFF656565,
                                                    ),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                Text(
                                                  '50 metros',
                                                  style: GoogleFonts.inter(
                                                    color: const Color(
                                                      0xFFC0BFBF,
                                                    ),
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.eco,
                                                  size: 14,
                                                  color: Color(0xFF427850),
                                                ),
                                                const SizedBox(width: 4),
                                                Text(
                                                  'Muestras: ',
                                                  style: GoogleFonts.inter(
                                                    color: const Color(
                                                      0xFF656565,
                                                    ),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                Text(
                                                  '2',
                                                  style: GoogleFonts.inter(
                                                    color: const Color(
                                                      0xFFC0BFBF,
                                                    ),
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
              
                                    const SizedBox(height: 4),
              
                                    // 🔹 Botón inferior (opcional, sigue funcionando)
                                    SizedBox(
                                      width: 274,
                                      height: 45,
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          backgroundColor: const Color(
                                            0xFF254D35,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.pushNamed(context, 'sampling_point_3_1');
                                        },
                                        child: Text(
                                          'CLICK PARA VER MÁS DETALLES',
                                          style: GoogleFonts.inter(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Center(
                          child: SizedBox(
                            width: 350,
                            height: 187,
                            child: GestureDetector(
                              onTap: () {
                                // 👇 Navega a otra página (usa la ruta que definiste en tu MaterialApp)
                                Navigator.pushNamed(context, 'home');
                              },
                              child: Card(
                                color: Colors.white,
                                elevation: 7,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // 🔹 Título principal
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Text(
                                        'PUNTO DE MUESTREO 2',
                                        style: GoogleFonts.inter(
                                          color: const Color(0xFF254D35),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: SizedBox(
                                        width: 310,
                                        child: const Divider(
                                          color: Color(0xFFC0BFBF),
                                          height: 14,
                                          thickness: 1,
                                        ),
                                      ),
                                    ),
              
                                    // 🔹 Fila con ícono y descripción
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xFF254D35),
                                            borderRadius: BorderRadius.circular(
                                              6,
                                            ),
                                          ),
                                          padding: const EdgeInsets.all(8),
                                          child: const Icon(
                                            Icons.remove_red_eye_rounded,
                                            color: Colors.white,
                                            size: 35,
                                          ),
                                        ),
                                        const SizedBox(width: 15),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Punto de observación',
                                              style: GoogleFonts.inter(
                                                color: const Color(0xFF656565),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.calendar_month,
                                                  size: 14,
                                                  color: Color(0xFF427850),
                                                ),
                                                const SizedBox(width: 5),
                                                Text(
                                                  'Periodo de muestreo: ',
                                                  style: GoogleFonts.inter(
                                                    color: const Color(
                                                      0xFF656565,
                                                    ),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                Text(
                                                  '30 días',
                                                  style: GoogleFonts.inter(
                                                    color: const Color(
                                                      0xFFC0BFBF,
                                                    ),
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.radio_button_checked,
                                                  size: 14,
                                                  color: Color(0xFF427850),
                                                ),
                                                const SizedBox(width: 5),
                                                Text(
                                                  'Radio: ',
                                                  style: GoogleFonts.inter(
                                                    color: const Color(
                                                      0xFF656565,
                                                    ),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                Text(
                                                  '50 metros',
                                                  style: GoogleFonts.inter(
                                                    color: const Color(
                                                      0xFFC0BFBF,
                                                    ),
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.eco,
                                                  size: 14,
                                                  color: Color(0xFF427850),
                                                ),
                                                const SizedBox(width: 4),
                                                Text(
                                                  'Muestras: ',
                                                  style: GoogleFonts.inter(
                                                    color: const Color(
                                                      0xFF656565,
                                                    ),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                Text(
                                                  '1',
                                                  style: GoogleFonts.inter(
                                                    color: const Color(
                                                      0xFFC0BFBF,
                                                    ),
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
              
                                    const SizedBox(height: 4),
              
                                    // 🔹 Botón inferior (opcional, sigue funcionando)
                                    SizedBox(
                                      width: 274,
                                      height: 45,
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          backgroundColor: const Color(
                                            0xFF254D35,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.pushNamed(context, '/');
                                        },
                                        child: Text(
                                          'CLICK PARA VER MÁS DETALLES',
                                          style: GoogleFonts.inter(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Center(
                          child: SizedBox(
                            width: 350,
                            height: 187,
                            child: GestureDetector(
                              onTap: () {
                                // 👇 Navega a otra página (usa la ruta que definiste en tu MaterialApp)
                                Navigator.pushNamed(context, 'home');
                              },
                              child: Card(
                                color: Colors.white,
                                elevation: 7,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // 🔹 Título principal
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Text(
                                        'PUNTO DE MUESTREO 3',
                                        style: GoogleFonts.inter(
                                          color: const Color(0xFF254D35),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: SizedBox(
                                        width: 310,
                                        child: const Divider(
                                          color: Color(0xFFC0BFBF),
                                          height: 14,
                                          thickness: 1,
                                        ),
                                      ),
                                    ),
              
                                    // 🔹 Fila con ícono y descripción
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xFF254D35),
                                            borderRadius: BorderRadius.circular(
                                              6,
                                            ),
                                          ),
                                          padding: const EdgeInsets.all(8),
                                          child: const Icon(
                                            Icons.remove_red_eye_rounded,
                                            color: Colors.white,
                                            size: 35,
                                          ),
                                        ),
                                        const SizedBox(width: 15),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Punto de observación',
                                              style: GoogleFonts.inter(
                                                color: const Color(0xFF656565),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.calendar_month,
                                                  size: 14,
                                                  color: Color(0xFF427850),
                                                ),
                                                const SizedBox(width: 5),
                                                Text(
                                                  'Periodo de muestreo: ',
                                                  style: GoogleFonts.inter(
                                                    color: const Color(
                                                      0xFF656565,
                                                    ),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                Text(
                                                  '30 días',
                                                  style: GoogleFonts.inter(
                                                    color: const Color(
                                                      0xFFC0BFBF,
                                                    ),
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.radio_button_checked,
                                                  size: 14,
                                                  color: Color(0xFF427850),
                                                ),
                                                const SizedBox(width: 5),
                                                Text(
                                                  'Radio: ',
                                                  style: GoogleFonts.inter(
                                                    color: const Color(
                                                      0xFF656565,
                                                    ),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                Text(
                                                  '50 metros',
                                                  style: GoogleFonts.inter(
                                                    color: const Color(
                                                      0xFFC0BFBF,
                                                    ),
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.eco,
                                                  size: 14,
                                                  color: Color(0xFF427850),
                                                ),
                                                const SizedBox(width: 4),
                                                Text(
                                                  'Muestras: ',
                                                  style: GoogleFonts.inter(
                                                    color: const Color(
                                                      0xFF656565,
                                                    ),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                Text(
                                                  '1',
                                                  style: GoogleFonts.inter(
                                                    color: const Color(
                                                      0xFFC0BFBF,
                                                    ),
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
              
                                    const SizedBox(height: 4),
              
                                    // 🔹 Botón inferior (opcional, sigue funcionando)
                                    SizedBox(
                                      width: 274,
                                      height: 45,
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          backgroundColor: const Color(
                                            0xFF254D35,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.pushNamed(context, 'home');
                                        },
                                        child: Text(
                                          'CLICK PARA VER MÁS DETALLES',
                                          style: GoogleFonts.inter(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
              
                        const SizedBox(height: 600), // simula más contenido
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 15, // ajusta según tu diseño
            left: 16,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context); // 👈 vuelve a la página anterior
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(
                    0.8,
                  ), // fondo suave detrás de la flecha
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(6),
                child: const Icon(
                  Icons.arrow_back,
                  color: Color(0xFF254D35), // color verde oscuro
                  size: 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

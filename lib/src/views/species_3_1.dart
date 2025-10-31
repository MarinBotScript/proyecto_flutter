import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Species31 extends StatefulWidget {
  const Species31({super.key});

  @override
  State<Species31> createState() => _Species31();
}

class _Species31 extends State<Species31> {
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
            child: Column(
              children: [
                const SizedBox(height: 90),

                const SizedBox(height: 20),

                Container(
                  height: 1500,
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
                        children: [
                          const SizedBox(width: 10),
                          const Icon(Icons.pets, color: Color(0xFF254D35)),
                          const SizedBox(width: 8),
                          Text(
                            'ESPECIES',
                            style: GoogleFonts.inter(
                              color: const Color(0xFF254D35),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 1,
                            height: 28,
                            color: const Color(0xFF254D35),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Punto 3',
                            style: GoogleFonts.inter(
                              color: const Color(0xFF254D35),
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 1,
                            height: 28,
                            color: const Color(0xFF254D35),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Muestra 1',
                            style: GoogleFonts.inter(
                              color: const Color(0xFF254D35),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      /// 🔹 Tarjeta de ejemplo
                      Center(
                        child: SizedBox(
                          width: 354,
                          height: 1350,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Card(
                                color: Colors.white,
                                elevation: 6,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 12,
                                        left: 15,
                                      ),
                                      child: Text(
                                        'Guacamaya',
                                        style: GoogleFonts.inter(
                                          color: const Color(0xFF254D35),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24,
                                        ),
                                      ),
                                    ),

                                    Center(
                                      child: SizedBox(
                                        width:
                                            312, // 👈 ancho total del divider centrado
                                        child: const Divider(
                                          color: Color(0xFFC0BFBF),
                                          height: 35,
                                          thickness: 1,
                                        ),
                                      ),
                                    ),

                                    Align(
                                      alignment: Alignment
                                          .center, // o center si la quieres centrada
                                      child: Container(
                                        width: 298,
                                        height: 73,
                                        decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                            67,
                                            136,
                                            95,
                                            0.15,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            4,
                                          ),
                                        ),
                                        padding: const EdgeInsets.all(6),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.monitor_heart_outlined,
                                                  color: Color(0xFF43885F),
                                                  size: 20,
                                                ),
                                                const SizedBox(width: 2),
                                                Text(
                                                  'Actividad de la observación',
                                                  style: GoogleFonts.inter(
                                                    color: const Color(
                                                      0xFF43885F,
                                                    ),
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Fecha de creación:',
                                                  style: GoogleFonts.inter(
                                                    color: Color(0xFF254D35),
                                                    fontSize: 10,
                                                  ),
                                                ),
                                                Text(
                                                  '2025-08-01',
                                                  style: GoogleFonts.inter(
                                                    color: Color(0xFF656565),
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Última actualización:',
                                                  style: GoogleFonts.inter(
                                                    color: Color(0xFF254D35),
                                                    fontSize: 10,
                                                  ),
                                                ),
                                                Text(
                                                  '2025-08-01',
                                                  style: GoogleFonts.inter(
                                                    color: Color(0xFF656565),
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    Center(
                                      child: SizedBox(
                                        width:
                                            312, // 👈 ancho total del divider centrado
                                        child: const Divider(
                                          color: Color(0xFFC0BFBF),
                                          height: 35,
                                          thickness: 1,
                                        ),
                                      ),
                                    ),

                                    CarouselSlider(
                                      items: [
                                        Image.asset(
                                          'assets/images/pajaro1.png',
                                          fit: BoxFit.cover,
                                        ),
                                        Image.asset(
                                          'assets/images/pajaro2.png',
                                          fit: BoxFit.cover,
                                        ),
                                        Image.asset(
                                          'assets/images/pajaro3.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ],
                                      options: CarouselOptions(
                                        height: 200,
                                        autoPlay: true,
                                        enlargeCenterPage: true,
                                        viewportFraction: 0.9,
                                      ),
                                    ),

                                    Center(
                                      child: SizedBox(
                                        width:
                                            312, // 👈 ancho total del divider centrado
                                        child: const Divider(
                                          color: Color(0xFFC0BFBF),
                                          height: 35,
                                          thickness: 1,
                                        ),
                                      ),
                                    ),

                                    Center(
                                      child: Text(
                                        'Especificaciones poblacionales',
                                        style: GoogleFonts.inter(
                                          color: Color(0xFF254D35),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),

                                    const SizedBox(height: 10),

                                    Column(
                                      children: [
                                        // 🔹 Cuadro principal Abundancia
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 8,
                                            vertical: 4,
                                          ),
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFD9E8E4),
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              const Icon(
                                                Icons.public,
                                                color: Color(0xFF427850),
                                                size: 20,
                                              ),
                                              const SizedBox(width: 4),
                                              Text(
                                                'Abundancia: 5',
                                                style: TextStyle(
                                                  color: Color(0xFF427850),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        const SizedBox(height: 10),

                                        // 🔹 Primera fila
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    horizontal: 3,
                                                    vertical: 4,
                                                  ),
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFD9E8E4),
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                                border: Border.all(
                                                  color: Color(0xFF7FA6A3),
                                                ),
                                              ),
                                              child: const Text(
                                                '♂ Cantidad de Machos: 2',
                                                style: TextStyle(
                                                  color: Color(0xFF427850),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 8),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    horizontal: 3,
                                                    vertical: 4,
                                                  ),
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFD9E8E4),
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                                border: Border.all(
                                                  color: Color(0xFF7FA6A3),
                                                ),
                                              ),
                                              child: const Text(
                                                '♀ Cantidad de Hembras: 3',
                                                style: TextStyle(
                                                  color: Color(0xFF427850),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),

                                        const SizedBox(height: 6),

                                        // 🔹 Segunda fila
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    horizontal: 3,
                                                    vertical: 4,
                                                  ),
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFD9E8E4),
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                                border: Border.all(
                                                  color: Color(0xFF7FA6A3),
                                                ),
                                              ),
                                              child: const Text(
                                                '⚥ Cantidad con sexo indeterminado: 0',
                                                style: TextStyle(
                                                  color: Color(0xFF427850),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),

                                        const SizedBox(height: 6),

                                        // 🔹 Tercera fila
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    horizontal: 3,
                                                    vertical: 4,
                                                  ),
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFD9E8E4),
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                                border: Border.all(
                                                  color: Color(0xFF7FA6A3),
                                                ),
                                              ),
                                              child: const Text(
                                                'Cantidad de Adultos: 4',
                                                style: TextStyle(
                                                  color: Color(0xFF427850),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 8),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    horizontal: 3,
                                                    vertical: 4,
                                                  ),
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFD9E8E4),
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                                border: Border.all(
                                                  color: Color(0xFF7FA6A3),
                                                ),
                                              ),
                                              child: const Text(
                                                'Cantidad de Jóvenes: 1',
                                                style: TextStyle(
                                                  color: Color(0xFF427850),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),

                                    Center(
                                      child: SizedBox(
                                        width:
                                            312, // 👈 ancho total del divider centrado
                                        child: const Divider(
                                          color: Color(0xFFC0BFBF),
                                          height: 35,
                                          thickness: 1,
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Text(
                                        'Detalles de la observación',
                                        style: GoogleFonts.inter(
                                          color: Color(0xFF254D35),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Center(
                                      child: Column(
                                        children: [
                                          // 🔹 Cuadro 1: Método de detección
                                          Container(
                                            width: 260,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFE4F0E8),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                color: const Color(0xFF8EB79A),
                                              ),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Row(
                                                  children: const [
                                                    Icon(
                                                      Icons.center_focus_strong,
                                                      color: Color(0xFF2F6C47),
                                                      size: 20,
                                                    ),
                                                    SizedBox(width: 6),
                                                    Text(
                                                      'Método de detección',
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xFF2F6C47,
                                                        ),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 4),
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 28,
                                                  ),
                                                  child: Text(
                                                    'Captura-red',
                                                    style: TextStyle(
                                                      color: Color(0xFF2F6C47),
                                                      fontSize: 13,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                          const SizedBox(height: 8),

                                          // 🔹 Cuadro 2: Distancia
                                          Container(
                                            width: 260,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFE4ECEE),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                color: Color(0xFF93AEB5),
                                              ),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Row(
                                                  children: const [
                                                    Icon(
                                                      Icons.social_distance,
                                                      color: Color(0xFF2A616A),
                                                      size: 20,
                                                    ),
                                                    SizedBox(width: 6),
                                                    Text(
                                                      'Distancia',
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xFF2A616A,
                                                        ),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 4),
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 28,
                                                  ),
                                                  child: Text(
                                                    '10.5',
                                                    style: TextStyle(
                                                      color: Color(0xFF2A616A),
                                                      fontSize: 13,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Center(
                                      child: SizedBox(
                                        width:
                                            312, // 👈 ancho total del divider centrado
                                        child: const Divider(
                                          color: Color(0xFFC0BFBF),
                                          height: 35,
                                          thickness: 1,
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Detalles de la observación',
                                            style: GoogleFonts.inter(
                                              color: const Color(0xFF254D35),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                          const SizedBox(height: 19),

                                          // 🔹 Primera fila
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              // Tarjeta: Hábitat
                                              Container(
                                                width: 148,
                                                height: 41,
                                                decoration: BoxDecoration(
                                                  color: const Color.fromRGBO(
                                                    67,
                                                    136,
                                                    95,
                                                    0.15,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                  border: Border.all(
                                                    color: const Color(
                                                      0xFF43885F,
                                                    ),
                                                    width: 1,
                                                  ),
                                                ),
                                                padding: const EdgeInsets.only(
                                                  left: 4,
                                                  top: 4,
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        const SizedBox(
                                                          width: 4,
                                                        ),
                                                        Text(
                                                          'Actividad observada',
                                                          style:
                                                              GoogleFonts.inter(
                                                                color:
                                                                    const Color(
                                                                      0xFF43885F,
                                                                    ),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 12,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                            left: 8,
                                                          ),
                                                      child: Text(
                                                        'Canto',
                                                        style:
                                                            GoogleFonts.inter(
                                                              color:
                                                                  const Color(
                                                                    0xFF656565,
                                                                  ),
                                                              fontSize: 12,
                                                            ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              const SizedBox(width: 10),

                                              // 🔵 Tarjeta: Vegetación
                                              Container(
                                                width: 148,
                                                height: 41,
                                                decoration: BoxDecoration(
                                                  color: const Color.fromRGBO(
                                                    66,
                                                    120,
                                                    128,
                                                    0.15,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                  border: Border.all(
                                                    color: const Color(
                                                      0xFF427880,
                                                    ),
                                                  ),
                                                ),
                                                padding: const EdgeInsets.only(
                                                  left: 4,
                                                  top: 4,
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        const SizedBox(
                                                          width: 4,
                                                        ),
                                                        Text(
                                                          'Sustrato / Soporte',
                                                          style:
                                                              GoogleFonts.inter(
                                                                color:
                                                                    const Color(
                                                                      0xFF427880,
                                                                    ),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 12,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                            left: 8,
                                                          ),
                                                      child: Text(
                                                        'Arboreo',
                                                        style:
                                                            GoogleFonts.inter(
                                                              color:
                                                                  const Color(
                                                                    0xFF656565,
                                                                  ),
                                                              fontSize: 12,
                                                            ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),

                                          const SizedBox(height: 10),

                                          // 🔹 Segunda fila (solo una tarjeta)
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              // 🔷 Tarjeta: Altura
                                              Container(
                                                width: 148,
                                                height: 41,
                                                decoration: BoxDecoration(
                                                  color: const Color.fromRGBO(
                                                    125,
                                                    191,
                                                    207,
                                                    0.10,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                  border: Border.all(
                                                    color: const Color(
                                                      0xFF7DBFCF,
                                                    ),
                                                    width: 1,
                                                  ),
                                                ),
                                                padding: const EdgeInsets.only(
                                                  left: 4,
                                                  top: 4,
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        const SizedBox(
                                                          width: 4,
                                                        ),
                                                        Text(
                                                          'Estrato',
                                                          style:
                                                              GoogleFonts.inter(
                                                                color:
                                                                    const Color(
                                                                      0xFF7DBFCF,
                                                                    ),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 12,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                            left: 8,
                                                          ),
                                                      child: Text(
                                                        'Aereo',
                                                        style:
                                                            GoogleFonts.inter(
                                                              color:
                                                                  const Color(
                                                                    0xFF656565,
                                                                  ),
                                                              fontSize: 12,
                                                            ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Center(
                                      child: SizedBox(
                                        width:
                                            312, // 👈 ancho total del divider centrado
                                        child: const Divider(
                                          color: Color(0xFFC0BFBF),
                                          height: 35,
                                          thickness: 1,
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Text(
                                        'Observaciones:',
                                        style: GoogleFonts.inter(
                                          color: const Color(0xFF254D35),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: Text(
                                        'Individuo posado en rama alta.',
                                        style: GoogleFonts.inter(
                                          color: const Color(0xFF656565),
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),

                                    Center(
                                      child: SizedBox(
                                        width:
                                            312, // 👈 ancho total del divider centrado
                                        child: const Divider(
                                          color: Color(0xFFC0BFBF),
                                          height: 35,
                                          thickness: 1,
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Text(
                                        'Mofología',
                                        style: GoogleFonts.inter(
                                          color: const Color(0xFF254D35),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Center(
                                      child: Container(
                                        width: 320,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFD9E8E4),
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          border: Border.all(
                                            color: const Color(0xFF6EA185),
                                          ),
                                        ),
                                        child: Column(
                                          children: [
                                            // 🔹 Fila 1: Longitud total
                                            Container(
                                              height: 50,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    horizontal: 10,
                                                  ),
                                              alignment: Alignment.centerLeft,
                                              decoration: const BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                    color: Color(0xFF6EA185),
                                                  ),
                                                ),
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Text(
                                                    'Longitud total',
                                                    style: TextStyle(
                                                      color: Color(0xFF2F6C47),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  SizedBox(height: 2),
                                                  Text(
                                                    '2',
                                                    style: TextStyle(
                                                      color: Color(0xFF2F6C47),
                                                      fontSize: 13,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            // 🔹 Fila 2: Longitud del tarso y cola
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    height: 50,
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                          horizontal: 10,
                                                        ),
                                                    decoration:
                                                        const BoxDecoration(
                                                          border: Border(
                                                            right: BorderSide(
                                                              color: Color(
                                                                0xFF6EA185,
                                                              ),
                                                            ),
                                                            bottom: BorderSide(
                                                              color: Color(
                                                                0xFF6EA185,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        const Icon(
                                                          Icons.straighten,
                                                          color: Color(
                                                            0xFF2F6C47,
                                                          ),
                                                          size: 18,
                                                        ),
                                                        const SizedBox(
                                                          width: 6,
                                                        ),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: const [
                                                            Text(
                                                              'Longitud del tarso',
                                                              style: TextStyle(
                                                                color: Color(
                                                                  0xFF2F6C47,
                                                                ),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                            Text(
                                                              '3',
                                                              style: TextStyle(
                                                                color: Color(
                                                                  0xFF2F6C47,
                                                                ),
                                                                fontSize: 12,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    height: 50,
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                          horizontal: 10,
                                                        ),
                                                    decoration:
                                                        const BoxDecoration(
                                                          border: Border(
                                                            bottom: BorderSide(
                                                              color: Color(
                                                                0xFF6EA185,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        const Icon(
                                                          Icons.straighten,
                                                          color: Color(
                                                            0xFF2F6C47,
                                                          ),
                                                          size: 18,
                                                        ),
                                                        const SizedBox(
                                                          width: 6,
                                                        ),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: const [
                                                            Text(
                                                              'Longitud de la cola',
                                                              style: TextStyle(
                                                                color: Color(
                                                                  0xFF2F6C47,
                                                                ),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                            Text(
                                                              '4',
                                                              style: TextStyle(
                                                                color: Color(
                                                                  0xFF2F6C47,
                                                                ),
                                                                fontSize: 12,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),

                                            // 🔹 Fila 3: Longitud del ala y pico
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    height: 50,
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                          horizontal: 10,
                                                        ),
                                                    decoration:
                                                        const BoxDecoration(
                                                          border: Border(
                                                            right: BorderSide(
                                                              color: Color(
                                                                0xFF6EA185,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        const Icon(
                                                          Icons.straighten,
                                                          color: Color(
                                                            0xFF2F6C47,
                                                          ),
                                                          size: 18,
                                                        ),
                                                        const SizedBox(
                                                          width: 6,
                                                        ),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: const [
                                                            Text(
                                                              'Longitud del ala',
                                                              style: TextStyle(
                                                                color: Color(
                                                                  0xFF2F6C47,
                                                                ),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                            Text(
                                                              '1',
                                                              style: TextStyle(
                                                                color: Color(
                                                                  0xFF2F6C47,
                                                                ),
                                                                fontSize: 12,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    height: 50,
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                          horizontal: 10,
                                                        ),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        const Icon(
                                                          Icons.straighten,
                                                          color: Color(
                                                            0xFF2F6C47,
                                                          ),
                                                          size: 18,
                                                        ),
                                                        const SizedBox(
                                                          width: 6,
                                                        ),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: const [
                                                            Text(
                                                              'Longitud del pico',
                                                              style: TextStyle(
                                                                color: Color(
                                                                  0xFF2F6C47,
                                                                ),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                            Text(
                                                              '10.2',
                                                              style: TextStyle(
                                                                color: Color(
                                                                  0xFF2F6C47,
                                                                ),
                                                                fontSize: 12,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    const SizedBox(height: 10),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 60, // 👈 ajusta para colocarlo justo sobre el borde
            right: 16, // 👈 o usa left si lo quieres a la izquierda
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'projects_page');
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF254D35),
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: const Icon(Icons.home, color: Colors.white, size: 28),
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

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectDetails3 extends StatefulWidget {
  const ProjectDetails3({super.key});

  @override
  State<ProjectDetails3> createState() => _ProjectDetails3();
}

class _ProjectDetails3 extends State<ProjectDetails3> {
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
                          const Icon(
                            Icons.folder_open,
                            color: Color(0xFF254D35),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Proyectos',
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
                            'Estudio de biodiversidad urbana',
                            style: GoogleFonts.inter(
                              color: const Color(0xFF254D35),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      /// 🔹 Tarjeta principal
                      Center(
                        child: SizedBox(
                          width: 360,
                          height: 1650,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Card(
                                color: Colors.white,
                                elevation: 6,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'ESTUDIO DE BIODIVERSIDAD URBANA',
                                        style: GoogleFonts.inter(
                                          color: Color(0xFF43885F),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24,
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
                                              66,
                                              120,
                                              128,
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
                                                    Icons
                                                        .monitor_heart_outlined,
                                                    color: Color(0xFF427880),
                                                    size: 20,
                                                  ),
                                                  const SizedBox(width: 2),
                                                  Text(
                                                    'Actividad del proyecto',
                                                    style: GoogleFonts.inter(
                                                      color: const Color(
                                                        0xFF427880,
                                                      ),
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                                    '2025-07-31',
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
                                                    '2025-07-31',
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
                                      Text(
                                        'Descripción del proyecto',
                                        style: GoogleFonts.inter(
                                          color: Color(0xFF254D35),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 5.0,
                                        ),
                                        child: Text(
                                          'Investigación sobre aves en parques de la ciudad',
                                          style: GoogleFonts.inter(
                                            color: Color(0xFF656565),
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
                                      Center(
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.pushNamed(
                                              context,
                                              'sampling_points_3',
                                            ); // 👈 cambia '/rutaDestino' por tu ruta real
                                          },
                                          child: Container(
                                            height: 45,
                                            width: 274,
                                            decoration: BoxDecoration(
                                              color: const Color(
                                                0xFF427850,
                                              ), // tono verde del fondo
                                              borderRadius: BorderRadius.circular(
                                                4,
                                              ), // bordes ligeramente redondeados
                                            ),
                                            alignment: Alignment.center,
                                            child: Text(
                                              'VER PUNTOS DE MUESTREO',
                                              style: GoogleFonts.inter(
                                                color: const Color(0xFFFFFFFF),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                              ),
                                            ),
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
                                      Text(
                                        'Objetivos',
                                        style: GoogleFonts.inter(
                                          color: Color(0xFF254D35),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 148,
                                            height: 37,
                                            decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                67,
                                                136,
                                                95,
                                                0.15,
                                              ), // verde claro con opacidad
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              border: Border.all(
                                                color: Color(0xFF557E66),
                                              ),
                                            ),
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Objetivo específico 1',
                                              style: GoogleFonts.inter(
                                                color: const Color(0xFF254D35),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          Container(
                                            width: 148,
                                            height: 37,
                                            decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                67,
                                                136,
                                                95,
                                                0.15,
                                              ), // verde claro con opacidad
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              border: Border.all(
                                                color: Color(0xFF557E66),
                                              ),
                                            ),
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Objetivo específico 2',
                                              style: GoogleFonts.inter(
                                                color: const Color(0xFF254D35),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10,
                                              ),
                                            ),
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
                                      const SizedBox(width: 10),
                                      Text(
                                        'Resultados',
                                        style: GoogleFonts.inter(
                                          color: Color(0xFF254D35),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 148,
                                              height: 37,
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(
                                                  66,
                                                  120,
                                                  128,
                                                  0.15,
                                                ), // verde claro con opacidad
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                                border: Border.all(
                                                  color: Color(0xFF427880),
                                                ),
                                              ),
                                              alignment: Alignment.center,
                                              child: Text(
                                                'Resultado preliminar 1',
                                                style: GoogleFonts.inter(
                                                  color: const Color(
                                                    0xFF427880,
                                                  ),
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 10,
                                                ),
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
                                                    Icons.date_range_sharp,
                                                    color: Color(0xFF43885F),
                                                    size: 25,
                                                  ),
                                                  const SizedBox(width: 2),
                                                  Text(
                                                    'Cronograma de actividad',
                                                    style: GoogleFonts.inter(
                                                      color: const Color(
                                                        0xFF254D35,
                                                      ),
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                                    'Fecha de inicio:',
                                                    style: GoogleFonts.inter(
                                                      color: Color(0xFF254D35),
                                                      fontSize: 10,
                                                    ),
                                                  ),
                                                  Text(
                                                    '2023-01-01',
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
                                                    'Fecha de finalización:',
                                                    style: GoogleFonts.inter(
                                                      color: Color(0xFF254D35),
                                                      fontSize: 10,
                                                    ),
                                                  ),
                                                  Text(
                                                    '2023-12-31',
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

                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Detalles ambientales',
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
                                                        const Icon(
                                                          Icons.eco,
                                                          color: Color(
                                                            0xFF43885F,
                                                          ),
                                                          size: 16,
                                                        ),
                                                        const SizedBox(
                                                          width: 4,
                                                        ),
                                                        Text(
                                                          'Hábitat',
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
                                                        'Urbano',
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
                                                        const Icon(
                                                          Icons
                                                              .local_florist_outlined,
                                                          color: Color(
                                                            0xFF427880,
                                                          ),
                                                          size: 16,
                                                        ),
                                                        const SizedBox(
                                                          width: 4,
                                                        ),
                                                        Text(
                                                          'Vegetación',
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
                                                        'Bosque de robles',
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
                                                        const Icon(
                                                          Icons.show_chart,
                                                          color: Color(
                                                            0xFF7DBFCF,
                                                          ),
                                                          size: 16,
                                                        ),
                                                        const SizedBox(
                                                          width: 4,
                                                        ),
                                                        Text(
                                                          'Altura',
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
                                                        '1200',
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
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.location_on_outlined,
                                            color: Color(0xFF43885F),
                                            size: 24,
                                          ),
                                          const SizedBox(width: 2),
                                          Text(
                                            'Ubicación',
                                            style: GoogleFonts.inter(
                                              color: const Color(0xFF254D35),
                                              fontWeight: FontWeight.w700,
                                              fontSize: 24,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10),

                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          width: 298,
                                          height: 69,
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                              66,
                                              120,
                                              128,
                                              0.15,
                                            ), // fondo con opacidad 15%
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                            border: Border.all(
                                              color: Color(0xFF427880),
                                              width: 1,
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
                                                    Icons
                                                        .public, // 🌍 icono de coordenadas
                                                    color: Color(0xFF427880),
                                                    size: 20,
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Text(
                                                    'Coordenadas',
                                                    style: GoogleFonts.inter(
                                                      color: const Color(
                                                        0xFF427880,
                                                      ),
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 15),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Latitud:',
                                                    style: GoogleFonts.inter(
                                                      color: const Color(
                                                        0xFF427880,
                                                      ),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                  Text(
                                                    '4.711',
                                                    style: GoogleFonts.inter(
                                                      color: const Color(
                                                        0xFF427880,
                                                      ),
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                  const SizedBox(width: 60),
                                                  Text(
                                                    'Longitud:',
                                                    style: GoogleFonts.inter(
                                                      color: const Color(
                                                        0xFF427880,
                                                      ),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                  Text(
                                                    '-74.0721',
                                                    style: GoogleFonts.inter(
                                                      color: const Color(
                                                        0xFF427880,
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
                                      const SizedBox(height: 18),
                                      Text(
                                        'Detalles de la ubicacion:',
                                        style: GoogleFonts.inter(
                                          color: const Color(0xFF254D35),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      const SizedBox(height: 11),
                                      Center(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            // Contenedor de targetas
                                            Wrap(
                                              spacing:
                                                  10, // espacio horizontal entre tarjetas
                                              runSpacing:
                                                  10, // espacio vertical entre filas
                                              alignment: WrapAlignment.center,
                                              children: const [
                                                _InfoCard(
                                                  titulo: "Nombre",
                                                  valor: "Parque Central",
                                                ),
                                                _InfoCard(
                                                  titulo: "Ciudad",
                                                  valor: "Bogotá",
                                                ),
                                                _InfoCard(
                                                  titulo: "Pueblo",
                                                  valor: "Vereda 1",
                                                ),
                                                _InfoCard(
                                                  titulo: "Departamento",
                                                  valor: "Cundinamarca",
                                                ),
                                                _InfoCard(
                                                  titulo: "Barrio",
                                                  valor: "Centro",
                                                ),
                                                _InfoCard(
                                                  titulo: "País",
                                                  valor: "Colombia",
                                                ),
                                              ],
                                            ),

                                            const SizedBox(height: 15),

                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: Image.asset(
                                                'assets/images/mapa.png', // cambia por tu ruta real
                                                width: 269,
                                                height: 159,
                                                fit: BoxFit.cover,
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

                                      Text(
                                        'Formación del equipo',
                                        style: GoogleFonts.inter(
                                          color: const Color(0xFF254D35),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 8,
                                          top: 8,
                                        ),
                                        child: Text(
                                          'Lider:',
                                          style: GoogleFonts.inter(
                                            color: const Color(0xFF43885F),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 148,
                                            height: 37,
                                            decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                67,
                                                136,
                                                95,
                                                0.15,
                                              ), // verde claro con opacidad
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              border: Border.all(
                                                color: Color(0xFF557E66),
                                              ),
                                            ),
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Lider',
                                              style: GoogleFonts.inter(
                                                color: const Color(0xFF254D35),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 8,
                                          top: 8,
                                        ),
                                        child: Text(
                                          'Equipo:',
                                          style: GoogleFonts.inter(
                                            color: const Color(0xFF43885F),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 148,
                                            height: 37,
                                            decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                67,
                                                136,
                                                95,
                                                0.15,
                                              ), // verde claro con opacidad
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              border: Border.all(
                                                color: Color(0xFF557E66),
                                              ),
                                            ),
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Objetivo específico 1',
                                              style: GoogleFonts.inter(
                                                color: const Color(0xFF254D35),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          Container(
                                            width: 148,
                                            height: 37,
                                            decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                67,
                                                136,
                                                95,
                                                0.15,
                                              ), // verde claro con opacidad
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              border: Border.all(
                                                color: Color(0xFF557E66),
                                              ),
                                            ),
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Objetivo específico 2',
                                              style: GoogleFonts.inter(
                                                color: const Color(0xFF254D35),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              /// 🔹 Badge superior derecho
                              Positioned(
                                top: -5,
                                right: -5,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF254D35),
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.15),
                                        blurRadius: 6,
                                        offset: const Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 0,
                                  ),
                                  child: const Text(
                                    'Ejecución',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ), // simula más contenido
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

          /// 🔙 Flecha de regreso (colócala dentro del Stack principal)
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

class _InfoCard extends StatelessWidget {
  final String titulo;
  final String valor;

  const _InfoCard({required this.titulo, required this.valor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 148,
      height: 41,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(67, 136, 95, 0.10), // verde clarito
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: const Color(0xFFB0C7B3), // borde de 1px verde suave
          width: 1,
        ),
      ),
      padding: const EdgeInsets.only(left: 5, top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titulo,
            style: GoogleFonts.inter(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF43885F),
            ),
          ),
          Text(
            valor,
            style: GoogleFonts.inter(
              fontSize: 12,
              color: const Color(0xFF656565),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Samples31 extends StatefulWidget {
  const Samples31({super.key});

  @override
  State<Samples31> createState() => _Samples31();
}

class _Samples31 extends State<Samples31> {
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 10),
                          const Icon(Icons.eco, color: Color(0xFF254D35)),
                          const SizedBox(width: 8),
                          Text(
                            'MUESTRAS',
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
                        ],
                      ),

                      const SizedBox(height: 10),

                      /// 🔹 Tarjeta de ejemplo
                      Center(
                        child: SizedBox(
                          width: 378,
                          height: 920,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Card(
                                color: Colors.white,
                                elevation: 6,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'MUESTRA 1',
                                                style: GoogleFonts.inter(
                                                  color: const Color(
                                                    0xFF254D35,
                                                  ),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 24,
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
                                            height: 30,
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
                                                    'Actividad de la muestra',
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
                                            height: 30,
                                            thickness: 1,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            'Recolectado por:',
                                            style: GoogleFonts.inter(
                                              color: const Color(0xFF254D35),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                            ),
                                          ),
                                          Container(
                                            width: 145,
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

                                      Center(
                                        child: Text(
                                          'Especificaciones de la muestra',
                                          style: GoogleFonts.inter(
                                            color: const Color(0xFF254D35),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),

                                      Column(
                                        children: [
                                          const SizedBox(height: 10),

                                          // 🔹 Primera fila (Fecha | Radio Fijo) - ambos con mismo ancho para quedar alineados
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 164, // ancho consistente
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
                                                  left: 8,
                                                  top: 4,
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        const Icon(
                                                          Icons.details,
                                                          color: Color(
                                                            0xFF43885F,
                                                          ),
                                                          size: 16,
                                                        ),
                                                        const SizedBox(
                                                          width: 3,
                                                        ),
                                                        Text(
                                                          'Detalle',
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
                                                    Text(
                                                      'No especificado',
                                                      style: GoogleFonts.inter(
                                                        color: const Color(
                                                          0xFF656565,
                                                        ),
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              const SizedBox(width: 10),

                                              Container(
                                                width:
                                                    164, // mismo ancho que el anterior
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
                                                  left: 8,
                                                  top: 4,
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        const Icon(
                                                          Icons.radar,
                                                          color: Color(
                                                            0xFF427880,
                                                          ),
                                                          size: 16,
                                                        ),
                                                        const SizedBox(
                                                          width: 3,
                                                        ),
                                                        Text(
                                                          'Radio Fijo',
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
                                                    Text(
                                                      '50 metros',
                                                      style: GoogleFonts.inter(
                                                        color: const Color(
                                                          0xFF656565,
                                                        ),
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),

                                          const SizedBox(height: 10),

                                          // 🔹 Segunda fila (Periodo de muestreo | Método de detección)
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 164,
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
                                                  left: 8,
                                                  top: 4,
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        const Icon(
                                                          Icons.date_range,
                                                          color: Color(
                                                            0xFF427880,
                                                          ),
                                                          size: 16,
                                                        ),
                                                        const SizedBox(
                                                          width: 3,
                                                        ),
                                                        Text(
                                                          'Periodo de muestreo',
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
                                                    Text(
                                                      '30 días',
                                                      style: GoogleFonts.inter(
                                                        color: const Color(
                                                          0xFF656565,
                                                        ),
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              const SizedBox(width: 10),

                                              Container(
                                                width: 164,
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
                                                  left: 8,
                                                  top: 4,
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        const Icon(
                                                          Icons.sensors_sharp,
                                                          color: Color(
                                                            0xFF43885F,
                                                          ),
                                                          size: 16,
                                                        ),
                                                        const SizedBox(
                                                          width: 3,
                                                        ),
                                                        Text(
                                                          'Método de detección',
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
                                                    Text(
                                                      'Red',
                                                      style: GoogleFonts.inter(
                                                        color: const Color(
                                                          0xFF656565,
                                                        ),
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),

                                          const SizedBox(height: 10),

                                          // 🔹 Tercera fila nueva (dos tiles) - ejemplo con Otros campos
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 164,
                                                height: 41,
                                                decoration: BoxDecoration(
                                                  color: const Color.fromRGBO(
                                                    67,
                                                    136,
                                                    95,
                                                    0.10,
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
                                                  left: 8,
                                                  top: 4,
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        const Icon(
                                                          Icons.speed,
                                                          color: Color(
                                                            0xFF43885F,
                                                          ),
                                                          size: 16,
                                                        ),
                                                        const SizedBox(
                                                          width: 3,
                                                        ),
                                                        Text(
                                                          'Frecuencia',
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
                                                    Text(
                                                      'Diaria',
                                                      style: GoogleFonts.inter(
                                                        color: const Color(
                                                          0xFF656565,
                                                        ),
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              const SizedBox(width: 10),

                                              Container(
                                                width: 164,
                                                height: 41,
                                                decoration: BoxDecoration(
                                                  color: const Color.fromRGBO(
                                                    66,
                                                    120,
                                                    128,
                                                    0.10,
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
                                                  left: 8,
                                                  top: 4,
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        const Icon(
                                                          Icons.height,
                                                          color: Color(
                                                            0xFF427880,
                                                          ),
                                                          size: 16,
                                                        ),
                                                        const SizedBox(
                                                          width: 3,
                                                        ),
                                                        Text(
                                                          'Altura',
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
                                                    Text(
                                                      '1.2 m',
                                                      style: GoogleFonts.inter(
                                                        color: const Color(
                                                          0xFF656565,
                                                        ),
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),

                                          const SizedBox(height: 10),

                                          // 🔹 Cuarta fila (1 tile ancho completo)
                                          Container(
                                            width: 250,
                                            height: 45,
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
                                                color: const Color(0xFF43885F),
                                              ),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 12,
                                              vertical: 4,
                                            ),
                                            child: Row(
                                              children: [
                                                const Icon(
                                                  Icons.note,
                                                  color: Color(0xFF43885F),
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Observaciones',
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
                                                      Text(
                                                        'Sin observaciones adicionales',
                                                        style:
                                                            GoogleFonts.inter(
                                                              color:
                                                                  const Color(
                                                                    0xFF656565,
                                                                  ),
                                                              fontSize: 12,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),

                                      const SizedBox(height: 10),
                                      Center(
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.pushNamed(
                                              context,
                                              'species_3_1',
                                            ); // 👈 cambia '/rutaDestino' por tu ruta real
                                          },
                                          child: Container(
                                            height: 45,
                                            width: 322,
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
                                              'CLICK PARA VER ESPECIES OBSERVADAS',
                                              style: GoogleFonts.inter(
                                                color: const Color(0xFFFFFFFF),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
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
                                      const SizedBox(height: 12),
                                    ],
                                  ),
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

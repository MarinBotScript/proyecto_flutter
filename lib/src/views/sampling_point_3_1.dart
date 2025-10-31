import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SamplingPoint31 extends StatefulWidget {
  const SamplingPoint31({super.key});

  @override
  State<SamplingPoint31> createState() => _SamplingPoint31();
}

class _SamplingPoint31 extends State<SamplingPoint31> {
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
                          const Icon(Icons.flag, color: Color(0xFF254D35)),
                          const SizedBox(width: 8),
                          Text(
                            'Puntos de muestreo',
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
                          width: 360,
                          height: 920,
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
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'PUNTO 3',
                                                style: GoogleFonts.inter(
                                                  color: const Color(
                                                    0xFF43885F,
                                                  ),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 24,
                                                ),
                                              ),
                                              Text(
                                                'Punto de captura',
                                                style: GoogleFonts.inter(
                                                  color: const Color(
                                                    0xFF656565,
                                                  ),
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ],
                                          ),
                                          // 🔹 Recuadro degradado con el número
                                          Container(
                                            width: 55,
                                            height: 55,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              gradient: const LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Color(
                                                    0xFF7EC3CF,
                                                  ), // azul verdoso claro
                                                  Color(
                                                    0xFF254D35,
                                                  ), // verde oscuro
                                                ],
                                              ),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.15),
                                                  blurRadius: 4,
                                                  offset: const Offset(0, 2),
                                                ),
                                              ],
                                            ),
                                            child: const Center(
                                              child: Text(
                                                '3',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold,
                                                ),
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
                                                    Icons
                                                        .monitor_heart_outlined,
                                                    color: Color(0xFF43885F),
                                                    size: 20,
                                                  ),
                                                  const SizedBox(width: 2),
                                                  Text(
                                                    'Actividad del punto de muestreo',
                                                    style: GoogleFonts.inter(
                                                      color: const Color(
                                                        0xFF43885F,
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
                                      Text(
                                        'Especificaciones del punto',
                                        style: GoogleFonts.inter(
                                          color: const Color(0xFF254D35),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),

                                      Column(
                                        children: [
                                          const SizedBox(height: 10),

                                          // 🔹 Primera fila
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
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
                                                          Icons.details,
                                                          color: Color(
                                                            0xFF43885F,
                                                          ),
                                                          size: 16,
                                                        ),
                                                        const SizedBox(
                                                          width: 4,
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
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                            left: 8,
                                                          ),
                                                      child: Text(
                                                        'No especificado',
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

                                              Container(
                                                width: 154,
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
                                                          Icons.radar,
                                                          color: Color(
                                                            0xFF427880,
                                                          ),
                                                          size: 16,
                                                        ),
                                                        const SizedBox(
                                                          width: 4,
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
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                            left: 8,
                                                          ),
                                                      child: Text(
                                                        '50 metros',
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
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 155,
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
                                                          Icons.date_range,
                                                          color: Color(
                                                            0xFF427880,
                                                          ),
                                                          size: 16,
                                                        ),
                                                        const SizedBox(
                                                          width: 2,
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
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                            left: 8,
                                                          ),
                                                      child: Text(
                                                        '30 días',
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

                                              Container(
                                                width: 155,
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
                                                  left: 1,
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
                                                          width: 1,
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
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                            left: 8,
                                                          ),
                                                      child: Text(
                                                        'Red',
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
                                                    Icons.date_range,
                                                    color: Color(0xFF427880),
                                                    size: 20,
                                                  ),
                                                  const SizedBox(width: 2),
                                                  Text(
                                                    'Periodo de observación',
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
                                                    'Fecha de inicio:',
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
                                                    'Fecha de finalización:',
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
                                      const SizedBox(height: 10),
                                      Center(
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.pushNamed(
                                              context,
                                              'samples_3_1',
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
                                              'VER MUESTRAS RECOLECTADAS',
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
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: const Color(
                                            0xFFE7EEEE,
                                          ), // gris muy claro
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                          border: Border.all(
                                            color: const Color(
                                              0xFF7FA6A3,
                                            ), // borde verde grisáceo suave
                                            width: 1,
                                          ),
                                        ),
                                        padding: const EdgeInsets.all(14),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons
                                                      .public, // ícono de globo terráqueo
                                                  color: Color(0xFF467472),
                                                  size: 24,
                                                ),
                                                const SizedBox(width: 6),
                                                Text(
                                                  'Coordenadas',
                                                  style: GoogleFonts.inter(
                                                    color: const Color(
                                                      0xFF467472,
                                                    ),
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 10),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Latitud: ',
                                                    style: GoogleFonts.inter(
                                                      color: const Color(
                                                        0xFF467472,
                                                      ),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '1.6610363970634727',
                                                    style: GoogleFonts.inter(
                                                      color: const Color(
                                                        0xFF467472,
                                                      ),
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 4),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Longitud: ',
                                                    style: GoogleFonts.inter(
                                                      color: const Color(
                                                        0xFF467472,
                                                      ),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '-75.62748356372849',
                                                    style: GoogleFonts.inter(
                                                      color: const Color(
                                                        0xFF467472,
                                                      ),
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      const SizedBox(height: 20),
                                      Center(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          child: Image.asset(
                                            'assets/images/mapa.png', // cambia por tu ruta real
                                            width: 269,
                                            height: 159,
                                            fit: BoxFit.cover,
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

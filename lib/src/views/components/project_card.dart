import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectCard extends StatelessWidget {
  final String titulo;
  final String descripcion;
  final String ubicacion;
  final String personas;
  final String fechas;
  final String estado;
  final String imagenAsset;
  final VoidCallback onTap;

  const ProjectCard({
    super.key,
    required this.titulo,
    required this.descripcion,
    required this.ubicacion,
    required this.personas,
    required this.fechas,
    required this.estado,
    required this.imagenAsset,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 365,
        height: 187,
        child: InkWell(
          onTap: onTap,
          child: Card(
            color: Colors.white,
            elevation: 6,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            clipBehavior: Clip.hardEdge,
            child: Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12, 12, 0, 13),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              titulo,
                              style: GoogleFonts.inter(
                                color: const Color(0xFF43885F),
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              descripcion,
                              style: const TextStyle(
                                color: Color(0xFFC0BFBF),
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 15),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(Icons.location_on_outlined,
                                    size: 15, color: Color(0xFF254D35)),
                                const SizedBox(width: 4),
                                Expanded(
                                  child: Text(
                                    ubicacion,
                                    style: const TextStyle(
                                      color: Color(0xFFC0BFBF),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 1),
                            Row(
                              children: [
                                const Icon(Icons.accessibility_new,
                                    size: 16, color: Color(0xFF254D35)),
                                const SizedBox(width: 4),
                                Text(
                                  personas,
                                  style: const TextStyle(
                                    color: Color(0xFFC0BFBF),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              color: Color(0xFFC0BFBF),
                              height: 14,
                              thickness: 1,
                              endIndent: 27,
                            ),
                            Row(
                              children: [
                                const Icon(Icons.date_range,
                                    size: 16, color: Color(0xFF254D35)),
                                const SizedBox(width: 4),
                                Flexible(
                                  child: Text(
                                    fechas,
                                    style: const TextStyle(
                                      color: Color(0xFFC0BFBF),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 17),
                      child: SizedBox(
                        width: 129,
                        height: 147,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(imagenAsset, fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF254D35),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    child: Text(
                      estado,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

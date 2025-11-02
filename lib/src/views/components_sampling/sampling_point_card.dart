import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'sampling_point_icon_box.dart';
import 'sampling_point_info_row.dart';

/// Tarjeta de punto de muestreo completa
class SamplingPointCard extends StatelessWidget {
  final String title;
  final String pointType;
  final String samplingPeriod;
  final String radius;
  final String samplesCount;
  final VoidCallback onTap;
  final IconData mainIcon;
  final double width;
  final double height;

  const SamplingPointCard({
    super.key,
    required this.title,
    required this.pointType,
    required this.samplingPeriod,
    required this.radius,
    required this.samplesCount,
    required this.onTap,
    this.mainIcon = Icons.remove_red_eye_rounded,
    this.width = 350,
    this.height = 187,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width,
        height: height,
        child: GestureDetector(
          onTap: onTap,
          child: Card(
            color: Colors.white,
            elevation: 7,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Título
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    title,
                    style: GoogleFonts.inter(
                      color: const Color(0xFF254D35),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),

                // Divider
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

                // Contenido principal
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SamplingPointIconBox(icon: mainIcon),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          pointType,
                          style: GoogleFonts.inter(
                            color: const Color(0xFF656565),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        SamplingPointInfoRow(
                          icon: Icons.calendar_month,
                          label: 'Periodo de muestreo: ',
                          value: samplingPeriod,
                        ),
                        SamplingPointInfoRow(
                          icon: Icons.radio_button_checked,
                          label: 'Radio: ',
                          value: radius,
                        ),
                        SamplingPointInfoRow(
                          icon: Icons.eco,
                          label: 'Muestras: ',
                          value: samplesCount,
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 4),

                // Botón inferior
                SizedBox(
                  width: 274,
                  height: 45,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF254D35),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    onPressed: onTap,
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
    );
  }
}
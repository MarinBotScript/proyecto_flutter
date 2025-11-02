// lib/pages/components_samples/sample_card.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components_details_page/custom_divider.dart';
import '../components_details_page/info_box.dart';
import '../components_details_page/badge_chip.dart';
import '../components_details_page/detail_card.dart';
import '../components_details_page/custom_button.dart';

/// Tarjeta completa de muestra recolectada
class SampleCard extends StatelessWidget {
  final String sampleNumber;
  final String createdAt;
  final String updatedAt;
  final String collectedBy;
  final String detail;
  final String fixedRadius;
  final String censusPeriod;
  final String detection;
  final String frequency;
  final String height;
  final String observations;
  final int speciesCount;
  final VoidCallback onViewSpecies;

  const SampleCard({
    super.key,
    required this.sampleNumber,
    required this.createdAt,
    required this.updatedAt,
    required this.collectedBy,
    required this.detail,
    required this.fixedRadius,
    required this.censusPeriod,
    required this.detection,
    required this.frequency,
    required this.height,
    required this.observations,
    required this.speciesCount,
    required this.onViewSpecies,
  });

  static const _greenLight = Color.fromRGBO(67, 136, 95, 0.15);
  static const _greenBorder = Color(0xFF557E66);
  static const _greenMedium = Color(0xFF43885F);
  static const _greenDark = Color(0xFF254D35);
  static const _blueLight = Color.fromRGBO(66, 120, 128, 0.15);
  static const _blueBorder = Color(0xFF427880);
  static const _grayText = Color(0xFF656565);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 378,
        child: Card(
          color: Colors.white,
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(),
                const CustomDivider(),
                _buildActivityBox(),
                const CustomDivider(),
                _buildCollectedBy(),
                const CustomDivider(),
                _buildSpecificationsTitle(),
                const SizedBox(height: 10),
                _buildSpecifications(),
                const SizedBox(height: 10),
                _buildObservations(),
                const SizedBox(height: 10),
                _buildSpeciesButton(),
                const CustomDivider(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Text(
      'MUESTRA $sampleNumber',
      style: GoogleFonts.inter(
        color: _greenDark,
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
    );
  }

  Widget _buildActivityBox() {
    return Align(
      alignment: Alignment.center,
      child: InfoBox(
        icon: Icons.monitor_heart_outlined,
        title: 'Actividad de la muestra',
        backgroundColor: _blueLight,
        borderColor: _blueBorder,
        iconColor: _blueBorder,
        titleColor: _blueBorder,
        rows: [
          InfoBoxRow(
            label: 'Fecha de creación:',
            value: createdAt,
          ),
          InfoBoxRow(
            label: 'Última actualización:',
            value: updatedAt,
          ),
        ],
      ),
    );
  }

  Widget _buildCollectedBy() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'Recolectado por:',
          style: GoogleFonts.inter(
            color: _greenDark,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        BadgeChip(
          text: collectedBy,
          backgroundColor: _greenLight,
          borderColor: _greenBorder,
          textColor: _greenDark,
          width: 145,
        ),
      ],
    );
  }

  Widget _buildSpecificationsTitle() {
    return Center(
      child: Text(
        'Especificaciones de la muestra',
        style: GoogleFonts.inter(
          color: _greenDark,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }

  Widget _buildSpecifications() {
    return Column(
      children: [
        // Primera fila
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DetailCard(
              icon: Icons.details,
              title: 'Detalle',
              value: detail,
              backgroundColor: _greenLight,
              borderColor: _greenMedium,
              iconColor: _greenMedium,
              titleColor: _greenMedium,
              width: 164,
            ),
            const SizedBox(width: 10),
            DetailCard(
              icon: Icons.radar,
              title: 'Radio Fijo',
              value: fixedRadius,
              backgroundColor: _blueLight,
              borderColor: _blueBorder,
              iconColor: _blueBorder,
              titleColor: _blueBorder,
              width: 164,
            ),
          ],
        ),
        const SizedBox(height: 10),
        
        // Segunda fila
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DetailCard(
              icon: Icons.date_range,
              title: 'Periodo de muestreo',
              value: censusPeriod,
              backgroundColor: _blueLight,
              borderColor: _blueBorder,
              iconColor: _blueBorder,
              titleColor: _blueBorder,
              width: 164,
            ),
            const SizedBox(width: 10),
            DetailCard(
              icon: Icons.sensors_sharp,
              title: 'Método de detección',
              value: detection,
              backgroundColor: _greenLight,
              borderColor: _greenMedium,
              iconColor: _greenMedium,
              titleColor: _greenMedium,
              width: 164,
            ),
          ],
        ),
        const SizedBox(height: 10),
        
        // Tercera fila
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DetailCard(
              icon: Icons.speed,
              title: 'Frecuencia',
              value: frequency,
              backgroundColor: Color.fromRGBO(67, 136, 95, 0.10),
              borderColor: _greenMedium,
              iconColor: _greenMedium,
              titleColor: _greenMedium,
              width: 164,
            ),
            const SizedBox(width: 10),
            DetailCard(
              icon: Icons.height,
              title: 'Altura',
              value: height,
              backgroundColor: Color.fromRGBO(66, 120, 128, 0.10),
              borderColor: _blueBorder,
              iconColor: _blueBorder,
              titleColor: _blueBorder,
              width: 164,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildObservations() {
    return Container(
      width: 250,
      height: 45,
      decoration: BoxDecoration(
        color: _greenLight,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: _greenMedium),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Row(
        children: [
          const Icon(Icons.note, color: _greenMedium),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Observaciones',
                  style: GoogleFonts.inter(
                    color: _greenMedium,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Text(
                  observations,
                  style: GoogleFonts.inter(
                    color: _grayText,
                    fontSize: 12,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSpeciesButton() {
    return Center(
      child: CustomButton(
        text: speciesCount > 0
            ? 'VER ESPECIES OBSERVADAS ($speciesCount)'
            : 'NO HAY ESPECIES OBSERVADAS',
        onTap: speciesCount > 0 ? onViewSpecies : () {},
        width: 322,
        fontSize: 15,
      ),
    );
  }
}
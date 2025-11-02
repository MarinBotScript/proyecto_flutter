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
  final String date;
  final String temperature;
  final String humidity;
  final String precipitation;
  final String cloudCover;
  final String luminosity;
  final String generalConditions;
  final int speciesCount;
  final VoidCallback onViewSpecies;

  const SampleCard({
    super.key,
    required this.sampleNumber,
    required this.createdAt,
    required this.updatedAt,
    required this.collectedBy,
    required this.date,
    required this.temperature,
    required this.humidity,
    required this.precipitation,
    required this.cloudCover,
    required this.luminosity,
    required this.generalConditions,
    required this.speciesCount,
    required this.onViewSpecies,
  });

  static const _greenLight = Color.fromRGBO(67, 136, 95, 0.15);
  static const _greenBorder = Color(0xFF557E66);
  static const _greenMedium = Color(0xFF43885F);
  static const _greenDark = Color(0xFF254D35);
  static const _blueLight = Color.fromRGBO(66, 120, 128, 0.15);
  static const _blueBorder = Color(0xFF427880);
  static const _cyanLight = Color.fromRGBO(125, 191, 207, 0.10);
  static const _cyanBorder = Color(0xFF7DBFCF);

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
        // Primera fila: Fecha y Temperatura
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DetailCard(
              icon: Icons.calendar_today,
              title: 'Fecha',
              value: date,
              backgroundColor: _greenLight,
              borderColor: _greenMedium,
              iconColor: _greenMedium,
              titleColor: _greenMedium,
              width: 164,
            ),
            const SizedBox(width: 10),
            DetailCard(
              icon: Icons.thermostat,
              title: 'Temperatura',
              value: temperature,
              backgroundColor: _blueLight,
              borderColor: _blueBorder,
              iconColor: _blueBorder,
              titleColor: _blueBorder,
              width: 164,
            ),
          ],
        ),
        const SizedBox(height: 10),
        
        // Segunda fila: Humedad y Precipitaciones
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DetailCard(
              icon: Icons.water_drop,
              title: 'Humedad',
              value: humidity,
              backgroundColor: _blueLight,
              borderColor: _blueBorder,
              iconColor: _blueBorder,
              titleColor: _blueBorder,
              width: 164,
            ),
            const SizedBox(width: 10),
            DetailCard(
              icon: Icons.cloud,
              title: 'Precipitaciones',
              value: precipitation,
              backgroundColor: _greenLight,
              borderColor: _greenMedium,
              iconColor: _greenMedium,
              titleColor: _greenMedium,
              width: 164,
            ),
          ],
        ),
        const SizedBox(height: 10),
        
        // Tercera fila: Cobertura de nubes y Luminosidad
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DetailCard(
              icon: Icons.wb_cloudy,
              title: 'Cobertura de nubes',
              value: cloudCover,
              backgroundColor: _cyanLight,
              borderColor: _cyanBorder,
              iconColor: _cyanBorder,
              titleColor: _cyanBorder,
              width: 164,
            ),
            const SizedBox(width: 10),
            DetailCard(
              icon: Icons.wb_sunny,
              title: 'Luminosidad',
              value: luminosity,
              backgroundColor: _greenLight,
              borderColor: _greenMedium,
              iconColor: _greenMedium,
              titleColor: _greenMedium,
              width: 164,
            ),
          ],
        ),
        const SizedBox(height: 10),
        
        // Cuarta fila: Condiciones generales (ocupa todo el ancho)
        Align(
          alignment: Alignment.centerLeft,
          child: DetailCard(
            icon: Icons.eco,
            title: 'Condiciones generales',
            value: generalConditions,
            backgroundColor: _blueLight,
            borderColor: _blueBorder,
            iconColor: _blueBorder,
            titleColor: _blueBorder,
            width: 338,
          ),
        ),
      ],
    );
  }

  Widget _buildSpeciesButton() {
    return Center(
      child: CustomButton(
        text: speciesCount > 0
            ? 'CLICK PARA VER ESPECIES OBSERVADAS'
            : 'NO HAY ESPECIES OBSERVADAS',
        onTap: speciesCount > 0 ? onViewSpecies : () {},
        width: 322,
        fontSize: 13,
      ),
    );
  }
}
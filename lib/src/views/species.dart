// lib/src/views/species_3_1.dart
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components_details_page/custom_divider.dart';
import 'components_details_page/info_box.dart';
import 'components_details_page/detail_card.dart';
import 'components_details_page/floating_buttons.dart' as custom;
import 'components_species/abundance_card.dart';
import 'components_species/observation_box.dart';
import 'components_species/morphology_table.dart';

class Species extends StatefulWidget {
  const Species({super.key});

  @override
  State<Species> createState() => _SpeciesState();
}

class _SpeciesState extends State<Species> {
  // Colores constantes
  static const _greenLight = Color.fromRGBO(67, 136, 95, 0.15);
  static const _greenMedium = Color(0xFF43885F);
  static const _greenDark = Color(0xFF254D35);
  static const _blueLight = Color(0xFFE4ECEE);
  static const _blueBorder = Color(0xFF93AEB5);
  static const _blueText = Color(0xFF2A616A);
  static const _greenObsLight = Color(0xFFE4F0E8);
  static const _greenObsBorder = Color(0xFF8EB79A);
  static const _greenObsText = Color(0xFF2F6C47);
  static const _cyanLight = Color.fromRGBO(125, 191, 207, 0.10);
  static const _cyanBorder = Color(0xFF7DBFCF);
  static const _grayText = Color(0xFF656565);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fondo fijo
          Positioned.fill(
            child: Image.asset('assets/images/fondo.jpg', fit: BoxFit.cover),
          ),

          // Contenido desplazable
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 90),
                _buildContentContainer(),
              ],
            ),
          ),

          // Botones flotantes
          _buildHomeButton(context),
          _buildBackButton(context),
        ],
      ),
    );
  }

  Widget _buildContentContainer() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
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
          _buildBreadcrumb(),
          const SizedBox(height: 20),
          _buildSpeciesCard(),
        ],
      ),
    );
  }

  Widget _buildBreadcrumb() {
    return Row(
      children: [
        const SizedBox(width: 10),
        const Icon(Icons.pets, color: _greenDark),
        const SizedBox(width: 8),
        Text(
          'ESPECIES',
          style: GoogleFonts.inter(
            color: _greenDark,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const SizedBox(width: 10),
        _buildVerticalDivider(),
        const SizedBox(width: 10),
        Text('Punto 3', style: GoogleFonts.inter(color: _greenDark, fontSize: 12)),
        const SizedBox(width: 10),
        _buildVerticalDivider(),
        const SizedBox(width: 10),
        Text('Muestra 1', style: GoogleFonts.inter(color: _greenDark, fontSize: 12)),
      ],
    );
  }

  Widget _buildVerticalDivider() {
    return Container(width: 1, height: 28, color: _greenDark);
  }

  Widget _buildSpeciesCard() {
    return Center(
      child: SizedBox(
        width: 370,
        child: Card(
          color: Colors.white,
          elevation: 6,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTitle(),
                const CustomDivider(),
                _buildActivityBox(),
                const CustomDivider(),
                _buildImageCarousel(),
                const CustomDivider(),
                _buildPopulationSection(),
                const CustomDivider(),
                _buildObservationDetailsSection(),
                const CustomDivider(),
                _buildBehaviorDetailsSection(),
                const CustomDivider(),
                _buildObservationsText(),
                const CustomDivider(),
                _buildMorphologySection(),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: const EdgeInsets.only(left: 0),
      child: Text(
        'Guacamaya',
        style: GoogleFonts.inter(
          color: _greenDark,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
    );
  }

  Widget _buildActivityBox() {
    return Align(
      alignment: Alignment.center,
      child: InfoBox(
        icon: Icons.monitor_heart_outlined,
        title: 'Actividad de la observación',
        backgroundColor: _greenLight,
        borderColor: _greenMedium,
        iconColor: _greenMedium,
        titleColor: _greenMedium,
        rows: [
          InfoBoxRow(label: 'Fecha de creación:', value: '2025-08-01'),
          InfoBoxRow(label: 'Última actualización:', value: '2025-08-01'),
        ],
      ),
    );
  }

  Widget _buildImageCarousel() {
    return CarouselSlider(
      items: [
        Image.asset('assets/images/pajaro1.png', fit: BoxFit.cover),
        Image.asset('assets/images/pajaro2.png', fit: BoxFit.cover),
        Image.asset('assets/images/pajaro3.png', fit: BoxFit.cover),
      ],
      options: CarouselOptions(
        height: 200,
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 0.9,
      ),
    );
  }

  Widget _buildPopulationSection() {
    return Column(
      children: [
        Center(
          child: Text(
            'Especificaciones poblacionales',
            style: GoogleFonts.inter(
              color: _greenDark,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        const AbundanceCard(
          abundance: 5,
          males: 2,
          females: 3,
          undeterminedSex: 0,
          adults: 4,
          juveniles: 1,
        ),
      ],
    );
  }

  Widget _buildObservationDetailsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Text(
            'Detalles de la observación',
            style: GoogleFonts.inter(
              color: _greenDark,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Center(
          child: Column(
            children: const [
              ObservationBox(
                icon: Icons.center_focus_strong,
                title: 'Método de detección',
                value: 'Captura-red',
                backgroundColor: _greenObsLight,
                borderColor: _greenObsBorder,
                textColor: _greenObsText,
              ),
              SizedBox(height: 8),
              ObservationBox(
                icon: Icons.social_distance,
                title: 'Distancia',
                value: '10.5',
                backgroundColor: _blueLight,
                borderColor: _blueBorder,
                textColor: _blueText,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBehaviorDetailsSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Detalles de la observación',
            style: GoogleFonts.inter(
              color: _greenDark,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 19),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DetailCard(
                icon: Icons.pets,
                title: 'Actividad observada',
                value: 'Canto',
                backgroundColor: _greenLight,
                borderColor: _greenMedium,
                iconColor: _greenMedium,
                titleColor: _greenMedium,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: DetailCard(
                  icon: Icons.park,
                  title: 'Sustrato / Soporte',
                  value: 'Arboreo',
                  backgroundColor: const Color.fromRGBO(66, 120, 128, 0.15),
                  borderColor: const Color(0xFF427880),
                  iconColor: const Color(0xFF427880),
                  titleColor: const Color(0xFF427880),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          DetailCard(
            icon: Icons.layers,
            title: 'Estrato',
            value: 'Aereo',
            backgroundColor: _cyanLight,
            borderColor: _cyanBorder,
            iconColor: _cyanBorder,
            titleColor: _cyanBorder,
          ),
        ],
      ),
    );
  }

  Widget _buildObservationsText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Text(
            'Observaciones:',
            style: GoogleFonts.inter(
              color: _greenDark,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'Individuo posado en rama alta.',
            style: GoogleFonts.inter(
              color: _grayText,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMorphologySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Text(
            'Morfología',
            style: GoogleFonts.inter(
              color: _greenDark,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(height: 10),
        const Center(
          child: MorphologyTable(
            totalLength: '2',
            tarsusLength: '3',
            tailLength: '4',
            wingLength: '1',
            billLength: '10.2',
          ),
        ),
      ],
    );
  }

  Widget _buildHomeButton(BuildContext context) {
    return Positioned(
      top: 60,
      right: 16,
      child: custom.HomeButton(
        onTap: () => Navigator.pushNamed(context, 'projects_page'),
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return const Positioned(
      top: 15,
      left: 16,
      child: custom.BackButton(),
    );
  }
}
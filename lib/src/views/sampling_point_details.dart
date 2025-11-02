// lib/pages/sampling_point_details.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/sampling_point_detail.dart';
import '../services/api_service.dart';
import 'components/background_container.dart';
import 'components_details_page/breadcrumb.dart';
import 'components_details_page/custom_divider.dart';
import 'components_details_page/detail_card.dart';
import 'components_details_page/info_box.dart';
import 'components_details_page/custom_button.dart';
import 'components_details_page/section_title.dart';
import 'components_sampling_details/numbered_badge.dart';
import 'components_sampling_details/coordinates_card.dart';
import 'components_details_page/floating_buttons.dart' as custom;

class SamplingPointDetails extends StatefulWidget {
  const SamplingPointDetails({super.key});

  @override
  State<SamplingPointDetails> createState() => _SamplingPointDetailsState();
}

class _SamplingPointDetailsState extends State<SamplingPointDetails> {
  SamplingPointDetail? samplingPointDetail;
  bool isLoading = true;
  String? errorMessage;
  String? projectUuid; // Guardar para pasarlo a la página de muestras
  String? samplingPointUuid; // Guardar para pasarlo a la página de muestras

  // Colores constantes
  static const _greenLight = Color.fromRGBO(67, 136, 95, 0.15);
  static const _greenMedium = Color(0xFF43885F);
  static const _greenDark = Color(0xFF254D35);
  static const _blueLight = Color.fromRGBO(66, 120, 128, 0.15);
  static const _blueBorder = Color(0xFF427880);
  static const _grayText = Color(0xFF656565);

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Recibir los argumentos: Map con projectUuid y samplingPointUuid
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>?;

    if (args != null && samplingPointDetail == null) {
      projectUuid = args['projectUuid'];
      samplingPointUuid = args['samplingPointUuid'];

      if (projectUuid != null && samplingPointUuid != null) {
        _loadSamplingPointDetails(projectUuid!, samplingPointUuid!);
      }
    }
  }

  Future<void> _loadSamplingPointDetails(
    String projectUuid,
    String samplingPointUuid,
  ) async {
    setState(() {
      isLoading = true;
      errorMessage = null;
    });

    try {
      final detail = await ApiService.fetchSamplingPointDetails(
        projectUuid,
        samplingPointUuid,
      );
      setState(() {
        samplingPointDetail = detail;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        errorMessage = e.toString();
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          if (isLoading)
            _buildLoading()
          else if (errorMessage != null)
            _buildError()
          else if (samplingPointDetail != null)
            _buildContent(),
          _buildHomeButton(context),
          _buildBackButton(context),
        ],
      ),
    );
  }

  Widget _buildLoading() {
    return const Center(child: CircularProgressIndicator(color: _greenDark));
  }

  Widget _buildError() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: Colors.red),
            const SizedBox(height: 16),
            Text(
              'Error al cargar punto de muestreo',
              style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: _greenDark,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              errorMessage ?? 'Error desconocido',
              textAlign: TextAlign.center,
              style: const TextStyle(color: _grayText),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(backgroundColor: _greenDark),
              child: const Text(
                'Volver',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    return SingleChildScrollView(
      child: BackgroundContainer(
        topImageAsset: 'assets/images/fondo.jpg',
        topImageHeight: 130,
        topOverlap: 30,
        contentHeight: 1050,
        child: Column(
          children: [
            const SizedBox(height: 10),
            _buildBreadcrumb(),
            const SizedBox(height: 10),
            _buildMainCard(),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget _buildBreadcrumb() {
    return Breadcrumb(
      icon: Icons.flag,
      firstLevel: 'Puntos de muestreo',
      secondLevel: samplingPointDetail!.title,
    );
  }

  Widget _buildMainCard() {
    return Center(
      child: SizedBox(
        width: 360,
        child: Card(
          color: Colors.white,
          elevation: 6,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(),
                const CustomDivider(),
                _buildActivityBox(),
                const CustomDivider(),
                _buildSpecifications(),
                const CustomDivider(),
                _buildObservationPeriod(),
                const SizedBox(height: 10),
                _buildSamplesButton(),
                const CustomDivider(),
                _buildLocation(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              samplingPointDetail!.title,
              style: GoogleFonts.inter(
                color: _greenMedium,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
              samplingPointDetail!.samplingType,
              style: GoogleFonts.inter(
                color: _grayText,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
          ],
        ),
        NumberedBadge(number: samplingPointDetail!.pointNumber.toString()),
      ],
    );
  }

  Widget _buildActivityBox() {
    return Align(
      alignment: Alignment.center,
      child: InfoBox(
        icon: Icons.monitor_heart_outlined,
        title: 'Actividad del punto de muestreo',
        backgroundColor: _greenLight,
        borderColor: _greenMedium,
        iconColor: _greenMedium,
        titleColor: _greenMedium,
        rows: [
          InfoBoxRow(
            label: 'Fecha de creación:',
            value: samplingPointDetail!.createdAt,
          ),
          InfoBoxRow(
            label: 'Última actualización:',
            value: samplingPointDetail!.updatedAt,
          ),
        ],
      ),
    );
  }

  Widget _buildSpecifications() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(text: 'Especificaciones del punto'),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DetailCard(
              icon: Icons.details,
              title: 'Detalle',
              value: samplingPointDetail!.detailSamplingType,
              backgroundColor: _greenLight,
              borderColor: _greenMedium,
              iconColor: _greenMedium,
              titleColor: _greenMedium,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: DetailCard(
                icon: Icons.radar,
                title: 'Radio Fijo',
                value: samplingPointDetail!.fixedRadiusText,
                backgroundColor: _blueLight,
                borderColor: _blueBorder,
                iconColor: _blueBorder,
                titleColor: _blueBorder,
                width: 154,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DetailCard(
              icon: Icons.date_range,
              title: 'Periodo de muestreo',
              value: samplingPointDetail!.censusPeriodText,
              backgroundColor: _blueLight,
              borderColor: _blueBorder,
              iconColor: _blueBorder,
              titleColor: _blueBorder,
              width: 155,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: DetailCard(
                icon: Icons.sensors_sharp,
                title: 'Método de detección',
                value: samplingPointDetail!.detection,
                backgroundColor: _greenLight,
                borderColor: _greenMedium,
                iconColor: _greenMedium,
                titleColor: _greenMedium,
                width: 155,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildObservationPeriod() {
    return Align(
      alignment: Alignment.center,
      child: InfoBox(
        icon: Icons.date_range,
        title: 'Periodo de observación',
        backgroundColor: _blueLight,
        borderColor: _blueBorder,
        iconColor: _blueBorder,
        titleColor: _blueBorder,
        rows: [
          InfoBoxRow(
            label: 'Fecha de inicio:',
            value: samplingPointDetail!.startDate,
          ),
          InfoBoxRow(
            label: 'Fecha de finalización:',
            value: samplingPointDetail!.endDate,
          ),
        ],
      ),
    );
  }

  Widget _buildSamplesButton() {
    return Center(
      child: CustomButton(
        text: samplingPointDetail!.samplesCount > 0
            ? 'VER MUESTRAS RECOLECTADAS (${samplingPointDetail!.samplesCount})'
            : 'NO HAY MUESTRAS RECOLECTADAS',
        onTap: samplingPointDetail!.samplesCount > 0
            ? () {
                // Pasar todos los datos necesarios a la página de muestras
                Navigator.pushNamed(
                  context,
                  'samples_page',
                  arguments: {
                    'projectUuid': projectUuid ?? '',
                    'samplingPointUuid': samplingPointUuid ?? '',
                    'pointTitle': samplingPointDetail!.title,
                  },
                );
              }
            : () {},
      ),
    );
  }

  Widget _buildLocation() {
    return Column(
      children: [
        const SectionTitle(
          text: 'Ubicación',
          icon: Icons.location_on_outlined,
          iconColor: _greenMedium,
          fontSize: 24,
        ),
        const SizedBox(height: 10),
        CoordinatesCard(
          latitude: samplingPointDetail!.coordinates.latitude,
          longitude: samplingPointDetail!.coordinates.longitude,
        ),
        const SizedBox(height: 20),
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/mapa.png',
              width: 269,
              height: 159,
              fit: BoxFit.cover,
            ),
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
    return const Positioned(top: 15, left: 16, child: custom.BackButton());
  }
}

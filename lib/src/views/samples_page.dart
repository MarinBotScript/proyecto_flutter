// lib/pages/samples_page.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/sample.dart';
import '../services/api_service.dart';
import 'components/background_container.dart';
import 'components_details_page/breadcrumb.dart';
import 'components_samples/sample_card.dart';
import 'components_details_page/floating_buttons.dart' as custom;

class SamplesPage extends StatefulWidget {
  const SamplesPage({super.key});

  @override
  State<SamplesPage> createState() => _SamplesPageState();
}

class _SamplesPageState extends State<SamplesPage> {
  List<Sample> samples = [];
  bool isLoading = true;
  String? errorMessage;
  String samplingPointTitle = 'Cargando...';

  // Colores constantes
  static const _greenDark = Color(0xFF254D35);
  static const _grayText = Color(0xFF656565);

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Recibir los argumentos: Map con projectUuid y samplingPointUuid
    final args = ModalRoute.of(context)?.settings.arguments as Map<String, String>?;

    if (args != null && samples.isEmpty && isLoading) {
      final projectUuid = args['projectUuid'];
      final samplingPointUuid = args['samplingPointUuid'];
      final pointTitle = args['pointTitle'] ?? 'Punto de muestreo';

      if (projectUuid != null && samplingPointUuid != null) {
        setState(() {
          samplingPointTitle = pointTitle;
        });
        _loadSamples(projectUuid, samplingPointUuid);
      }
    }
  }

  Future<void> _loadSamples(String projectUuid, String samplingPointUuid) async {
    setState(() {
      isLoading = true;
      errorMessage = null;
    });

    try {
      final samplesData = await ApiService.fetchSamples(
        projectUuid,
        samplingPointUuid,
      );
      setState(() {
        samples = samplesData;
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
          else
            _buildContent(),
          _buildHomeButton(context),
          _buildBackButton(context),
        ],
      ),
    );
  }

  Widget _buildLoading() {
    return const Center(
      child: CircularProgressIndicator(color: _greenDark),
    );
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
              'Error al cargar muestras',
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
    if (samples.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Text(
            'No hay muestras disponibles para este punto de muestreo',
            style: GoogleFonts.inter(
              fontSize: 16,
              color: _grayText,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    // Calcular altura dinámica basada en número de muestras
    final double contentHeight = 190 + (samples.length * 600.0);

    return SingleChildScrollView(
      child: BackgroundContainer(
        topImageAsset: 'assets/images/fondo.jpg',
        topImageHeight: 130,
        topOverlap: 30,
        contentHeight: contentHeight,
        child: Column(
          children: [
            // Breadcrumb centrado horizontalmente
            Center(child: _buildBreadcrumb()),

            const SizedBox(height: 20),

            // Generar tarjetas dinámicamente desde la API
            ...samples.asMap().entries.map((entry) {
              final index = entry.key;
              final sample = entry.value;
              final displayNumber = (index + 1).toString();

              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: SampleCard(
                  sampleNumber: displayNumber,
                  createdAt: sample.createdAt,
                  updatedAt: sample.updatedAt,
                  collectedBy: sample.collectedBy,
                  date: sample.date,
                  temperature: sample.temperatureText,
                  humidity: sample.humidityText,
                  precipitation: sample.precipitation,
                  cloudCover: sample.cloudCoverText,
                  luminosity: sample.luminosity,
                  generalConditions: sample.generalConditions,
                  speciesCount: sample.speciesCount,
                  onViewSpecies: () {
                    // Obtener los UUIDs necesarios de los argumentos
                    final args = ModalRoute.of(context)?.settings.arguments
                        as Map<String, String>?;

                    Navigator.pushNamed(
                      context,
                      'species',
                      arguments: {
                        'projectUuid': args?['projectUuid'] ?? '',
                        'samplingPointUuid': args?['samplingPointUuid'] ?? '',
                        'sampleUuid': sample.uuid,
                        'sampleNumber': displayNumber,
                      },
                    );
                  },
                ),
              );
            }).toList(),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildBreadcrumb() {
    return Breadcrumb(
      icon: Icons.eco,
      firstLevel: 'MUESTRAS',
      secondLevel: samplingPointTitle,
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
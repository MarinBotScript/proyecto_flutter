// lib/pages/sampling_points.dart
import 'package:flutter/material.dart';
import '../models/sampling_point.dart';
import '../services/api_service.dart';
import 'components/background_container.dart';
import 'components_sampling/sampling_point_card.dart';
import 'components_sampling/page_header.dart';
import 'components_details_page/floating_buttons.dart' as custom;
import 'package:google_fonts/google_fonts.dart';

class SamplingPoints extends StatefulWidget {
  const SamplingPoints({super.key});

  @override
  State<SamplingPoints> createState() => _SamplingPointsState();
}

class _SamplingPointsState extends State<SamplingPoints> {
  List<SamplingPoint> samplingPoints = [];
  bool isLoading = true;
  String? errorMessage;
  static const _greenDark = Color(0xFF254D35);
  static const _grayText = Color(0xFF656565);

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final String? projectUuid =
        ModalRoute.of(context)?.settings.arguments as String?;

    if (projectUuid != null && samplingPoints.isEmpty && isLoading) {
      _loadSamplingPoints(projectUuid);
    }
  }

  Future<void> _loadSamplingPoints(String projectUuid) async {
    setState(() {
      isLoading = true;
      errorMessage = null;
    });

    try {
      final points = await ApiService.fetchSamplingPoints(projectUuid);
      setState(() {
        samplingPoints = points;
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

          // Botón de retroceso
          const Positioned(top: 15, left: 16, child: custom.BackButton()),

          // Botón de inicio (casita)
          Positioned(top: 60, right: 16, child: _buildHomeButton(context)),
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
              'Error al cargar puntos de muestreo',
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
    if (samplingPoints.isEmpty) {
      return Center(
        child: Text(
          'No hay puntos de muestreo disponibles',
          style: GoogleFonts.inter(fontSize: 16, color: _grayText),
        ),
      );
    }

    return SingleChildScrollView(
      child: BackgroundContainer(
        topImageAsset: 'assets/images/fondo.jpg',
        topImageHeight: 130,
        topOverlap: 20,
        contentHeight: 900,
        child: Column(
          children: [
            const PageHeader(icon: Icons.flag, title: 'PUNTOS DE MUESTREO'),
            const SizedBox(height: 10),

            ...samplingPoints.map((point) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: SamplingPointCard(
                  title: point.title,
                  pointType: point.samplingType,
                  samplingPeriod: point.samplingPeriod,
                  radius: point.radiusText,
                  samplesCount: point.samplesCountText,
                  onTap: () {
                    // Obtener el projectUuid de los argumentos actuales
                    final String? projectUuid =
                        ModalRoute.of(context)?.settings.arguments as String?;

                    // Navegar pasando ambos UUIDs
                    Navigator.pushNamed(
                      context,
                      'sampling_point_details',
                      arguments: {
                        'projectUuid': projectUuid ?? '',
                        'samplingPointUuid': point.uuid,
                      },
                    );
                  },
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildHomeButton(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, 'projects_page'),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: _greenDark,
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/project_detail.dart';
import '../services/api_service.dart';
import './components/background_container.dart';
import 'components_details_page/badge_chip.dart';
import 'components_details_page/breadcrumb.dart';
import 'components_details_page/custom_button.dart';
import 'components_details_page/custom_divider.dart';
import 'components_details_page/detail_card.dart';
import 'components_details_page/info_box.dart';
import 'components_details_page/info_card.dart';
import 'components_details_page/section_title.dart';
import 'components_details_page/status_badge.dart';

class ProjectDetails extends StatefulWidget {
  const ProjectDetails({super.key});

  @override
  State<ProjectDetails> createState() => _ProjectDetailsState();
}

class _ProjectDetailsState extends State<ProjectDetails> {
  ProjectDetail? projectDetail;
  bool isLoading = true;
  String? errorMessage;

  // Colores constantes
  static const _greenLight = Color.fromRGBO(67, 136, 95, 0.15);
  static const _greenBorder = Color(0xFF557E66);
  static const _greenDark = Color(0xFF254D35);
  static const _greenMedium = Color(0xFF43885F);
  static const _blueLight = Color.fromRGBO(66, 120, 128, 0.15);
  static const _blueBorder = Color(0xFF427880);
  static const _cyanLight = Color.fromRGBO(125, 191, 207, 0.10);
  static const _cyanBorder = Color(0xFF7DBFCF);
  static const _grayText = Color(0xFF656565);

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final String? uuid = ModalRoute.of(context)?.settings.arguments as String?;
    if (uuid != null && projectDetail == null) {
      _loadProjectDetails(uuid);
    }
  }

  Future<void> _loadProjectDetails(String uuid) async {
    setState(() {
      isLoading = true;
      errorMessage = null;
    });

    try {
      final detail = await ApiService.fetchProjectDetails(uuid);
      setState(() {
        projectDetail = detail;
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
          else if (projectDetail != null)
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
              'Error al cargar el proyecto',
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
        contentHeight: 1900, // Aumentado para el equipo
        child: Column(
          children: [
            const SizedBox(height: 20),
            _buildBreadcrumb(),
            const SizedBox(height: 20),
            _buildMainCard(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildBreadcrumb() {
    return Breadcrumb(
      icon: Icons.folder_open,
      firstLevel: 'Proyectos',
      secondLevel: projectDetail!.name,
    );
  }

  Widget _buildMainCard() {
    return Center(
      child: SizedBox(
        width: 360,
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
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTitle(),
                    const CustomDivider(),
                    _buildActivityBox(),
                    const CustomDivider(),
                    _buildDescription(),
                    const CustomDivider(),
                    _buildSamplingButton(),
                    const CustomDivider(),
                    _buildObjectives(),
                    const CustomDivider(),
                    _buildResults(),
                    const CustomDivider(),
                    _buildSchedule(),
                    const CustomDivider(),
                    _buildEnvironmentalDetails(),
                    const CustomDivider(),
                    _buildLocation(),
                    const CustomDivider(),
                    _buildTeam(),
                  ],
                ),
              ),
            ),
            Positioned(
              top: -5,
              right: -5,
              child: StatusBadge(text: projectDetail!.status),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      projectDetail!.name.toUpperCase(),
      style: GoogleFonts.inter(
        color: _greenMedium,
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
        title: 'Actividad del proyecto',
        backgroundColor: _blueLight,
        borderColor: _blueBorder,
        iconColor: _blueBorder,
        titleColor: _blueBorder,
        rows: [
          InfoBoxRow(
            label: 'Fecha de creación:',
            value: projectDetail!.createdAt,
          ),
          InfoBoxRow(
            label: 'Última actualización:',
            value: projectDetail!.updatedAt,
          ),
        ],
      ),
    );
  }

  Widget _buildDescription() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(text: 'Descripción del proyecto'),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            projectDetail!.description,
            style: GoogleFonts.inter(color: _grayText, fontSize: 15),
          ),
        ),
      ],
    );
  }

  Widget _buildSamplingButton() {
    return Center(
      child: CustomButton(
        text: projectDetail!.hasSamplingPoints
            ? 'VER PUNTOS DE MUESTREO'
            : 'NO ESPECIFICA PUNTOS DE MUESTREO',
        onTap: projectDetail!.hasSamplingPoints
            ? () => Navigator.pushNamed(
                context,
                'sampling_points',
                arguments: projectDetail!.uuid, // Pasar el UUID del proyecto
              )
            : () {},
      ),
    );
  }

  Widget _buildObjectives() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(text: 'Objetivos'),
        const SizedBox(height: 12),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          alignment: WrapAlignment.center,
          children: projectDetail!.objectives
              .map(
                (obj) => BadgeChip(
                  text: obj,
                  backgroundColor: _greenLight,
                  borderColor: _greenBorder,
                  textColor: _greenDark,
                ),
              )
              .toList(),
        ),
      ],
    );
  }

  Widget _buildResults() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(text: 'Resultados'),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: projectDetail!.results
                .map(
                  (result) => BadgeChip(
                    text: result,
                    backgroundColor: _blueLight,
                    borderColor: _blueBorder,
                    textColor: _blueBorder,
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildSchedule() {
    return Align(
      alignment: Alignment.center,
      child: InfoBox(
        icon: Icons.date_range_sharp,
        title: 'Cronograma de actividad',
        backgroundColor: _greenLight,
        borderColor: _greenMedium,
        iconColor: _greenMedium,
        titleColor: _greenDark,
        rows: [
          InfoBoxRow(
            label: 'Fecha de inicio:',
            value: projectDetail!.startDate,
          ),
          InfoBoxRow(
            label: 'Fecha de finalización:',
            value: projectDetail!.endDate,
          ),
        ],
      ),
    );
  }

  Widget _buildEnvironmentalDetails() {
    return Column(
      children: [
        const SectionTitle(text: 'Detalles ambientales'),
        const SizedBox(height: 19),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DetailCard(
              icon: Icons.eco,
              title: 'Hábitat',
              value: projectDetail!.habitatType,
              backgroundColor: _greenLight,
              borderColor: _greenMedium,
              iconColor: _greenMedium,
              titleColor: _greenMedium,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: DetailCard(
                icon: Icons.local_florist_outlined,
                title: 'Vegetación',
                value: projectDetail!.dominantVegetation,
                backgroundColor: _blueLight,
                borderColor: _blueBorder,
                iconColor: _blueBorder,
                titleColor: _blueBorder,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.centerLeft,
          child: DetailCard(
            icon: Icons.show_chart,
            title: 'Altura',
            value: projectDetail!.height,
            backgroundColor: _cyanLight,
            borderColor: _cyanBorder,
            iconColor: _cyanBorder,
            titleColor: _cyanBorder,
          ),
        ),
      ],
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
        _buildCoordinates(),
        const SizedBox(height: 18),
        const SectionTitle(text: 'Detalles de la ubicación:'),
        const SizedBox(height: 11),
        _buildLocationDetails(),
      ],
    );
  }

  Widget _buildCoordinates() {
    final hasCoords = projectDetail!.coordinates != null;
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 310,
        height: 69,
        decoration: BoxDecoration(
          color: _blueLight,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: _blueBorder),
        ),
        padding: const EdgeInsets.all(6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.public, color: _blueBorder, size: 20),
                const SizedBox(width: 5),
                Text(
                  'Coordenadas',
                  style: GoogleFonts.inter(
                    color: _blueBorder,
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Latitud: ',
                  style: GoogleFonts.inter(
                    color: _blueBorder,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Text(
                  hasCoords
                      ? projectDetail!.coordinates!.latitude
                      : 'No especifica',
                  style: GoogleFonts.inter(color: _blueBorder, fontSize: 12),
                ),
                const SizedBox(width: 20),
                Text(
                  'Longitud: ',
                  style: GoogleFonts.inter(
                    color: _blueBorder,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Text(
                  hasCoords
                      ? projectDetail!.coordinates!.longitude
                      : 'No especifica',
                  style: GoogleFonts.inter(color: _blueBorder, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLocationDetails() {
    final locality = projectDetail!.locality;
    return Center(
      child: Column(
        children: [
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: [
              InfoCard(
                titulo: "Nombre",
                valor: locality?.name ?? 'No especifica',
              ),
              InfoCard(
                titulo: "Ciudad",
                valor: locality?.city ?? 'No especifica',
              ),
              InfoCard(
                titulo: "Pueblo",
                valor: locality?.village ?? 'No especifica',
              ),
              InfoCard(
                titulo: "Departamento",
                valor: locality?.state ?? 'No especifica',
              ),
              InfoCard(
                titulo: "Barrio",
                valor: locality?.neighborhood ?? 'No especifica',
              ),
              InfoCard(
                titulo: "País",
                valor: locality?.country ?? 'No especifica',
              ),
            ],
          ),
          const SizedBox(height: 15),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/mapa.png',
              width: 269,
              height: 159,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTeam() {
    final hasLeader = projectDetail!.leader != null;
    final hasMembers = projectDetail!.teamMembers.isNotEmpty;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(text: 'Formación del equipo'),

        // Sección Líder
        Padding(
          padding: const EdgeInsets.only(left: 8, top: 12),
          child: Text(
            'Líder:',
            style: GoogleFonts.inter(
              color: _greenMedium,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Center(
          child: BadgeChip(
            text: hasLeader ? 'Líder' : 'No especifica',
            backgroundColor: _greenLight,
            borderColor: _greenBorder,
            textColor: _greenDark,
            width: 148,
          ),
        ),

        // Sección Equipo (Miembros)
        Padding(
          padding: const EdgeInsets.only(left: 8, top: 16),
          child: Text(
            'Equipo:',
            style: GoogleFonts.inter(
              color: _greenMedium,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
        const SizedBox(height: 8),

        // Mostrar miembros o "No especifica"
        if (!hasMembers)
          Center(
            child: BadgeChip(
              text: 'No especifica',
              backgroundColor: _greenLight,
              borderColor: _greenBorder,
              textColor: _greenDark,
              width: 148,
            ),
          )
        else
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: List.generate(
              projectDetail!.teamMembers.length,
              (index) => BadgeChip(
                text: 'Miembro ${index + 1}',
                backgroundColor: _greenLight,
                borderColor: _greenBorder,
                textColor: _greenDark,
              ),
            ),
          ),

        const SizedBox(height: 12),

        // Información adicional del total
        Center(
          child: Text(
            projectDetail!.teamSize > 0
                ? 'Total: ${projectDetail!.teamSize} ${projectDetail!.teamSize == 1 ? "persona" : "personas"}'
                : 'Sin equipo asignado',
            style: GoogleFonts.inter(
              color: _grayText,
              fontSize: 12,
              fontStyle: FontStyle.italic,
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
      child: _buildFloatingButton(
        onTap: () => Navigator.pushNamed(context, 'projects_page'),
        icon: Icons.home,
        backgroundColor: _greenDark,
        iconColor: Colors.white,
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return Positioned(
      top: 15,
      left: 16,
      child: _buildFloatingButton(
        onTap: () => Navigator.pop(context),
        icon: Icons.arrow_back,
        backgroundColor: Colors.white.withOpacity(0.8),
        iconColor: _greenDark,
        size: 24,
      ),
    );
  }

  Widget _buildFloatingButton({
    required VoidCallback onTap,
    required IconData icon,
    required Color backgroundColor,
    required Color iconColor,
    double size = 28,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: backgroundColor,
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
        child: Icon(icon, color: iconColor, size: size),
      ),
    );
  }
}

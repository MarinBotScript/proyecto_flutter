import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/project.dart';
import '../services/api_service.dart';
import './components/background_container.dart';
import './components/search_bar.dart';
import './components/project_card.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  final TextEditingController _searchController = TextEditingController();

  List<Project> proyectos = [];
  List<Project> resultados = [];
  bool isLoading = true;
  String? errorMessage;

  @override
  void initState() {
    super.initState();
    _cargarProyectos();
  }

  /// Carga los proyectos desde la API
  Future<void> _cargarProyectos() async {
    setState(() {
      isLoading = true;
      errorMessage = null;
    });

    try {
      final projects = await ApiService.fetchProjects();
      setState(() {
        proyectos = projects;
        resultados = projects;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        errorMessage = e.toString();
        isLoading = false;
      });
    }
  }

  void _buscarProyecto(String query) {
    setState(() {
      if (query.isEmpty) {
        resultados = proyectos;
      } else {
        resultados = proyectos
            .where((proyecto) =>
                proyecto.titulo.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  void _limpiarBusqueda() {
    setState(() {
      _searchController.clear();
      resultados = proyectos;
    });
  }

  @override
  Widget build(BuildContext context) {
    const double topImageHeight = 200;
    const double topOverlap = 35;

    final double screenH = MediaQuery.of(context).size.height;
    final double contentHeight = screenH - (topImageHeight - topOverlap);

    return Scaffold(
      body: SingleChildScrollView(
        child: BackgroundContainer(
          topImageHeight: topImageHeight,
          topOverlap: topOverlap,
          contentHeight: contentHeight,
          searchBar: ProjectSearchBar(
            controller: _searchController,
            onChanged: _buscarProyecto,
            onClear: _limpiarBusqueda,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Encabezado
              Row(
                children: [
                  const SizedBox(width: 10),
                  const Icon(Icons.folder_open, color: Color(0xFF254D35)),
                  const SizedBox(width: 8),
                  Text(
                    'Proyectos',
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
                ],
              ),
              const SizedBox(height: 20),

              // Contenido: loading, error o lista
              if (isLoading)
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(40.0),
                    child: CircularProgressIndicator(
                      color: Color(0xFF254D35),
                    ),
                  ),
                )
              else if (errorMessage != null)
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.error_outline,
                          size: 48,
                          color: Colors.red,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Error al cargar proyectos',
                          style: GoogleFonts.inter(
                            color: const Color(0xFF254D35),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          errorMessage!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Color(0xFFC0BFBF),
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton.icon(
                          onPressed: _cargarProyectos,
                          icon: const Icon(Icons.refresh),
                          label: const Text('Reintentar'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF254D35),
                            foregroundColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              else if (resultados.isEmpty)
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Text(
                      'No se encontraron proyectos',
                      style: TextStyle(
                        color: Color(0xFF254D35),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              else
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: resultados.length,
                  itemBuilder: (context, index) {
                    final p = resultados[index];
                    return Column(
                      children: [
                        ProjectCard(
                          titulo: p.titulo,
                          descripcion: p.descripcion,
                          ubicacion: p.ubicacion,
                          personas: p.personas,
                          fechas: p.fechas,
                          estado: p.estado,
                          imagenAsset: p.imagen,
                          onTap: () {
                            // Puedes pasar el uuid del proyecto a la siguiente pantalla
                            Navigator.pushNamed(
                              context,
                              p.rutaDestino,
                              arguments: p.uuid,
                            );
                          },
                        ),
                        const SizedBox(height: 20),
                      ],
                    );
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}

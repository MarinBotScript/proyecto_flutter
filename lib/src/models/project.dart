// lib/models/project.dart
class Project {
  final String titulo;
  final String descripcion;
  final String ubicacion;
  final String personas;
  final String fechas;
  final String estado;
  final String imagen;
  final String rutaDestino;
  final String uuid;

  Project({
    required this.titulo,
    required this.descripcion,
    required this.ubicacion,
    required this.personas,
    required this.fechas,
    required this.estado,
    required this.imagen,
    required this.rutaDestino,
    required this.uuid,
  });

  /// Constructor para datos locales (acepta valores dinámicos)
  factory Project.fromMap(Map<String, dynamic> m) => Project(
        titulo: (m['titulo'] ?? m['title'] ?? 'No especifica').toString(),
        descripcion: (m['descripcion'] ?? m['description'] ?? 'No especifica').toString(),
        ubicacion: (m['ubicacion'] ?? 'No especifica').toString(),
        personas: (m['personas'] ?? 'No especifica').toString(),
        fechas: (m['fechas'] ?? 'No especifica - No especifica').toString(),
        estado: (m['estado'] ?? 'No especifica').toString(),
        imagen: (m['imagen'] ?? 'assets/images/proyectos.jpg').toString(),
        rutaDestino: (m['rutaDestino'] ?? 'project_details').toString(),
        uuid: (m['uuid'] ?? m['id'] ?? '').toString(),
      );

  /// Constructor robusto para datos de la API
  factory Project.fromJson(Map<String, dynamic> json) {
    String getString(dynamic v, [String defaultValue = 'No especifica']) {
      if (v == null) return defaultValue;
      final s = v.toString().trim();
      return s.isEmpty ? defaultValue : s;
    }

    // Título y descripción
    final titulo = getString(json['name'], 'No especifica');
    final descripcion = getString(json['description'], 'No especifica');

    // Ubicación: intenta localidad (city + state) o fallbacks
    String ubicacion = 'No especifica, No especifica';
    final locality = json['locality'];
    if (locality != null && locality is Map) {
      final city = getString(locality['city'], 'No especifica');
      final state = getString(locality['state'], 'No especifica');
      ubicacion = '$city, $state';
    } else {
      // posibles claves alternativas
      final city = json['city'] ?? json['locality_city'];
      final state = json['state'] ?? json['locality_state'];
      if (city != null || state != null) {
        ubicacion = '${getString(city)} , ${getString(state)}';
      }
    }

    // Fechas: soporta varias claves y formatos defensivamente
    String fechas = 'No especifica - No especifica';
    try {
      final sdRaw = json['startDate'] ?? json['start_date'] ?? json['start'];
      final edRaw = json['endDate'] ?? json['end_date'] ?? json['end'];
      String startText = 'No especifica';
      String endText = 'No especifica';
      if (sdRaw != null) {
        final sd = DateTime.parse(sdRaw.toString());
        startText = sd.toIso8601String().split('T')[0];
      }
      if (edRaw != null) {
        final ed = DateTime.parse(edRaw.toString());
        endText = ed.toIso8601String().split('T')[0];
      }
      fechas = '$startText - $endText';
    } catch (_) {
      // deja el valor por defecto si el parseo falla
    }

    // Personas: cuenta líder + equipo si existen (muy defensivo)
    int numPersonas = 0;
    final leader = json['leader'];
    if (leader != null && (leader is Map ? (leader['uuid'] ?? leader['id']) != null : true)) {
      numPersonas += 1;
    }
    final team = json['team'];
    if (team is List) {
      numPersonas += team.length;
    }
    final personas = numPersonas > 0 ? numPersonas.toString() : 'No especifica';

    // Estado
    final estado = getString(json['status'], 'No especifica');

    // Imagen por defecto (puedes sobrescribir desde la API si provee uno)
    final imagen = getString(json['image'] ?? json['imagen'] ?? 'assets/images/proyectos.jpg', 'assets/images/proyectos.jpg');

    // rutaDestino: permitir que la API lo indique o usar la ruta común por defecto
    final rutaDestino = getString(json['rutaDestino'] ?? json['route'] ?? 'project_details', 'project_details');

    // uuid: soporta varias claves (uuid, id, project_id)
    final rawUuid = json['uuid'] ?? json['id'] ?? json['project_id'] ?? '';
    final uuid = rawUuid != null ? rawUuid.toString() : '';

    return Project(
      titulo: titulo,
      descripcion: descripcion,
      ubicacion: ubicacion,
      personas: personas,
      fechas: fechas,
      estado: estado,
      imagen: imagen,
      rutaDestino: rutaDestino,
      uuid: uuid,
    );
  }

  Map<String, dynamic> toJson() => {
        'titulo': titulo,
        'descripcion': descripcion,
        'ubicacion': ubicacion,
        'personas': personas,
        'fechas': fechas,
        'estado': estado,
        'imagen': imagen,
        'rutaDestino': rutaDestino,
        'uuid': uuid,
      };

  @override
  String toString() => 'Project(uuid: $uuid, titulo: $titulo, ruta: $rutaDestino)';
}

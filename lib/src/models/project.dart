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

  /// Constructor para datos locales (mantiene compatibilidad con código existente)
  factory Project.fromMap(Map<String, String> m) => Project(
        titulo: m['titulo'] ?? '',
        descripcion: m['descripcion'] ?? '',
        ubicacion: m['ubicacion'] ?? '',
        personas: m['personas'] ?? '',
        fechas: m['fechas'] ?? '',
        estado: m['estado'] ?? '',
        imagen: m['imagen'] ?? '',
        rutaDestino: m['rutaDestino'] ?? '',
        uuid: m['uuid'] ?? '',
      );

  /// Constructor para datos de la API
  factory Project.fromJson(Map<String, dynamic> json) {
    // Procesar título
    String titulo = 'No especifica';
    if (json['name'] != null && json['name'].toString().trim().isNotEmpty) {
      titulo = json['name'];
    }

    // Procesar descripción
    String descripcion = 'No especifica';
    if (json['description'] != null && json['description'].toString().trim().isNotEmpty) {
      descripcion = json['description'];
    }

    // Procesar ubicación
    String ubicacion = 'No especifica, No especifica';
    if (json['locality'] != null) {
      final locality = json['locality'];
      final city = locality['city'];
      final state = locality['state'];
      
      String cityText = 'No especifica';
      String stateText = 'No especifica';
      
      if (city != null && city.toString().trim().isNotEmpty) {
        cityText = city;
      }
      if (state != null && state.toString().trim().isNotEmpty) {
        stateText = state;
      }
      
      ubicacion = '$cityText, $stateText';
    }

    // Procesar fechas
    String fechas = 'No especifica - No especifica';
    if (json['startDate'] != null && json['endDate'] != null) {
      try {
        final startDate = DateTime.parse(json['startDate']);
        final endDate = DateTime.parse(json['endDate']);
        final start = startDate.toString().split(' ')[0];
        final end = endDate.toString().split(' ')[0];
        fechas = '$start - $end';
      } catch (e) {
        fechas = 'No especifica - No especifica';
      }
    } else if (json['startDate'] != null) {
      try {
        final start = DateTime.parse(json['startDate']).toString().split(' ')[0];
        fechas = '$start - No especifica';
      } catch (e) {
        fechas = 'No especifica - No especifica';
      }
    } else if (json['endDate'] != null) {
      try {
        final end = DateTime.parse(json['endDate']).toString().split(' ')[0];
        fechas = 'No especifica - $end';
      } catch (e) {
        fechas = 'No especifica - No especifica';
      }
    }

    // Procesar número de personas (líder + equipo)
    String personas = '0';
    int numPersonas = 0;
    
    // Contar líder
    if (json['leader'] != null && json['leader']['uuid'] != null) {
      numPersonas = 1;
    }
    
    // Contar equipo
    if (json['team'] != null && json['team'] is List) {
      numPersonas += (json['team'] as List).length;
    }
    
    personas = numPersonas > 0 ? numPersonas.toString() : 'No especifica';

    // Procesar estado
    String estado = 'No especifica';
    if (json['status'] != null && json['status'].toString().trim().isNotEmpty) {
      estado = json['status'];
    }

    return Project(
      titulo: titulo,
      descripcion: descripcion,
      ubicacion: ubicacion,
      personas: personas,
      fechas: fechas,
      estado: estado,
      imagen: 'assets/images/Proyectos.jpg', // imagen por defecto
      rutaDestino: 'project_details', // ruta por defecto
      uuid: json['uuid'] ?? '',
    );
  }

  /// Convierte el proyecto a un mapa (útil para debug o storage local)
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
}
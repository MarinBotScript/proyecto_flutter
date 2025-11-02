// lib/models/project_detail.dart
class ProjectDetail {
  final String uuid; // AGREGAR ESTA LÍNEA
  final String name;
  final String description;
  final List<String> objectives;
  final List<String> results;
  final String startDate;
  final String endDate;
  final String habitatType;
  final String dominantVegetation;
  final String height;
  final Coordinates? coordinates;
  final Locality? locality;
  final String status;
  final String createdAt;
  final String updatedAt;
  final bool hasSamplingPoints;
  final int teamSize;
  final TeamMember? leader;
  final List<TeamMember> teamMembers;

  ProjectDetail({
    required this.uuid, // AGREGAR ESTA LÍNEA
    required this.name,
    required this.description,
    required this.objectives,
    required this.results,
    required this.startDate,
    required this.endDate,
    required this.habitatType,
    required this.dominantVegetation,
    required this.height,
    this.coordinates,
    this.locality,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.hasSamplingPoints,
    required this.teamSize,
    this.leader,
    required this.teamMembers,
  });

  factory ProjectDetail.fromJson(Map<String, dynamic> json) {
    final research = json['research'] ?? {};

    // AGREGAR ESTA SECCIÓN - Procesar UUID
    String uuid = research['uuid'] ?? '';
    if (uuid.trim().isEmpty) uuid = '';

    // Procesar nombre
    String name = research['name'] ?? 'No especifica';
    if (name.trim().isEmpty) name = 'No especifica';

    // Procesar descripción
    String description = research['description'] ?? 'No especifica';
    if (description.trim().isEmpty) description = 'No especifica';

    // Procesar objetivos
    List<String> objectives = [];
    if (research['objectives'] != null && research['objectives'] is List) {
      objectives = List<String>.from(research['objectives']);
    }
    if (objectives.isEmpty) {
      objectives = ['No especifica'];
    }

    // Procesar resultados
    List<String> results = [];
    if (research['results'] != null && research['results'] is List) {
      results = List<String>.from(research['results']);
    }
    if (results.isEmpty) {
      results = ['No especifica'];
    }

    // Procesar fechas
    String startDate = 'No especifica';
    if (research['startDate'] != null) {
      try {
        startDate = DateTime.parse(
          research['startDate'],
        ).toString().split(' ')[0];
      } catch (e) {
        startDate = 'No especifica';
      }
    }

    String endDate = 'No especifica';
    if (research['endDate'] != null) {
      try {
        endDate = DateTime.parse(research['endDate']).toString().split(' ')[0];
      } catch (e) {
        endDate = 'No especifica';
      }
    }

    // Procesar fechas de actividad
    String createdAt = 'No especifica';
    if (research['createdAt'] != null) {
      try {
        createdAt = DateTime.parse(
          research['createdAt'],
        ).toString().split(' ')[0];
      } catch (e) {
        createdAt = 'No especifica';
      }
    }

    String updatedAt = 'No especifica';
    if (research['updatedAt'] != null) {
      try {
        updatedAt = DateTime.parse(
          research['updatedAt'],
        ).toString().split(' ')[0];
      } catch (e) {
        updatedAt = 'No especifica';
      }
    }

    // Procesar tipo de hábitat
    String habitatType = research['habitatType'] ?? 'No especifica';
    if (habitatType.trim().isEmpty) habitatType = 'No especifica';

    // Procesar vegetación
    String dominantVegetation =
        research['dominantVegetation'] ?? 'No especifica';
    if (dominantVegetation.trim().isEmpty) dominantVegetation = 'No especifica';

    // Procesar altura
    String height = 'No especifica';
    if (research['height'] != null) {
      height = research['height'].toString();
    }

    // Procesar coordenadas
    Coordinates? coordinates;
    if (research['coordinates'] != null) {
      coordinates = Coordinates.fromJson(research['coordinates']);
    }

    // Procesar localidad
    Locality? locality;
    if (research['locality'] != null) {
      locality = Locality.fromJson(research['locality']);
    }

    // Procesar estado
    String status = research['status'] ?? 'No especifica';
    if (status.trim().isEmpty) status = 'No especifica';

    // Verificar si hay puntos de muestreo
    bool hasSamplingPoints = false;
    if (research['samplingPoints'] != null &&
        research['samplingPoints'] is List) {
      hasSamplingPoints = (research['samplingPoints'] as List).isNotEmpty;
    }

    // Procesar líder del equipo
    TeamMember? leader;
    if (research['leader'] != null && research['leader'] is Map) {
      leader = TeamMember.fromJson(research['leader']);
    }

    // Procesar miembros del equipo
    List<TeamMember> teamMembers = [];
    if (research['team'] != null && research['team'] is List) {
      teamMembers = (research['team'] as List)
          .map((member) => TeamMember.fromJson(member))
          .toList();
    }

    // Calcular tamaño del equipo
    int teamSize = 0;
    if (leader != null) teamSize = 1;
    teamSize += teamMembers.length;

    return ProjectDetail(
      uuid: uuid, // AGREGAR ESTA LÍNEA
      name: name,
      description: description,
      objectives: objectives,
      results: results,
      startDate: startDate,
      endDate: endDate,
      habitatType: habitatType,
      dominantVegetation: dominantVegetation,
      height: height,
      coordinates: coordinates,
      locality: locality,
      status: status,
      createdAt: createdAt,
      updatedAt: updatedAt,
      hasSamplingPoints: hasSamplingPoints,
      teamSize: teamSize,
      leader: leader,
      teamMembers: teamMembers,
    );
  }
}

// Las demás clases (TeamMember, Coordinates, Locality) permanecen igual
class TeamMember {
  final String uuid;
  final String name;
  final String email;

  TeamMember({required this.uuid, required this.name, required this.email});

  factory TeamMember.fromJson(Map<String, dynamic> json) {
    String name = 'No especifica';
    if (json['name'] != null && json['name'].toString().trim().isNotEmpty) {
      name = json['name'].toString();
    }

    String email = 'No especifica';
    if (json['email'] != null && json['email'].toString().trim().isNotEmpty) {
      email = json['email'].toString();
    }

    return TeamMember(uuid: json['uuid'] ?? '', name: name, email: email);
  }
}

class Coordinates {
  final String latitude;
  final String longitude;

  Coordinates({required this.latitude, required this.longitude});

  factory Coordinates.fromJson(Map<String, dynamic> json) {
    String lat = 'No especifica';
    String lng = 'No especifica';

    if (json['latitude'] != null) {
      lat = json['latitude'].toString();
    }
    if (json['longitude'] != null) {
      lng = json['longitude'].toString();
    }

    return Coordinates(latitude: lat, longitude: lng);
  }
}

class Locality {
  final String name;
  final String village;
  final String neighborhood;
  final String city;
  final String state;
  final String country;

  Locality({
    required this.name,
    required this.village,
    required this.neighborhood,
    required this.city,
    required this.state,
    required this.country,
  });

  factory Locality.fromJson(Map<String, dynamic> json) {
    String name = json['name'] ?? 'No especifica';
    if (name.trim().isEmpty) name = 'No especifica';

    String village = json['village'] ?? 'No especifica';
    if (village.trim().isEmpty) village = 'No especifica';

    String neighborhood = json['neighborhood'] ?? 'No especifica';
    if (neighborhood.trim().isEmpty) neighborhood = 'No especifica';

    String city = json['city'] ?? 'No especifica';
    if (city.trim().isEmpty) city = 'No especifica';

    String state = json['state'] ?? 'No especifica';
    if (state.trim().isEmpty) state = 'No especifica';

    String country = json['country'] ?? 'No especifica';
    if (country.trim().isEmpty) country = 'No especifica';

    return Locality(
      name: name,
      village: village,
      neighborhood: neighborhood,
      city: city,
      state: state,
      country: country,
    );
  }
}

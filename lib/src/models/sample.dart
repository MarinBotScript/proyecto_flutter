// lib/models/sample.dart
class Sample {
  final String id;
  final int sampleNumber;
  final String collectedBy;
  final String date;
  final double temperature;
  final int humidity;
  final String precipitation;
  final int cloudCover;
  final String luminosity;
  final String generalConditions;
  final String uuid;
  final String createdAt;
  final String updatedAt;
  final int speciesCount;

  Sample({
    required this.id,
    required this.sampleNumber,
    required this.collectedBy,
    required this.date,
    required this.temperature,
    required this.humidity,
    required this.precipitation,
    required this.cloudCover,
    required this.luminosity,
    required this.generalConditions,
    required this.uuid,
    required this.createdAt,
    required this.updatedAt,
    required this.speciesCount,
  });

  factory Sample.fromJson(Map<String, dynamic> json) {
    // Procesar collectedBy
    String collectedBy = 'No especifica';
    if (json['collectedBy'] != null && json['collectedBy'] is Map) {
      final collectedByMap = json['collectedBy'] as Map<String, dynamic>;
      if (collectedByMap['uuid'] != null) {
        // Aquí podrías buscar el nombre del usuario por UUID si tienes esa info
        // Por ahora solo mostramos que existe
        collectedBy = 'Miembro 1';
      }
    }

    // Procesar fecha
    String date = 'No especifica';
    if (json['date'] != null) {
      try {
        date = DateTime.parse(json['date']).toString().split(' ')[0];
      } catch (e) {
        date = json['date'].toString();
      }
    }

    // Procesar temperatura (el API usa 'temperature')
    double temperature = 0.0;
    if (json['temperature'] != null) {
      temperature = (json['temperature'] is int) 
        ? (json['temperature'] as int).toDouble()
        : (json['temperature'] as num).toDouble();
    }

    // Procesar humedad (el API usa 'relativeHumidity')
    int humidity = 0;
    if (json['relativeHumidity'] != null) {
      humidity = (json['relativeHumidity'] is int) 
        ? json['relativeHumidity'] as int
        : (json['relativeHumidity'] as num).toInt();
    }

    // Procesar precipitaciones (el API usa 'precipitationState')
    String precipitation = json['precipitationState'] ?? 'No especifica';
    if (precipitation.trim().isEmpty) precipitation = 'No especifica';

    // Procesar cobertura de nubes (el API usa 'cloudCoverage')
    int cloudCover = 0;
    if (json['cloudCoverage'] != null) {
      cloudCover = (json['cloudCoverage'] is int) 
        ? json['cloudCoverage'] as int
        : (json['cloudCoverage'] as num).toInt();
    }

    // Procesar luminosidad (el API usa 'luminosity')
    String luminosity = json['luminosity'] ?? 'No especifica';
    if (luminosity.trim().isEmpty) luminosity = 'No especifica';

    // Procesar condiciones generales (el API usa 'overallConditions')
    String generalConditions = json['overallConditions'] ?? 'No especifica';
    if (generalConditions.trim().isEmpty) generalConditions = 'No especifica';

    // Procesar fechas de actividad
    String createdAt = 'No especifica';
    if (json['createdAt'] != null) {
      try {
        createdAt = DateTime.parse(json['createdAt']).toString().split(' ')[0];
      } catch (e) {
        createdAt = 'No especifica';
      }
    }

    String updatedAt = 'No especifica';
    if (json['updatedAt'] != null) {
      try {
        updatedAt = DateTime.parse(json['updatedAt']).toString().split(' ')[0];
      } catch (e) {
        updatedAt = 'No especifica';
      }
    }

    // Contar especies (el API usa 'observedSpecies')
    int speciesCount = 0;
    if (json['observedSpecies'] != null && json['observedSpecies'] is List) {
      speciesCount = (json['observedSpecies'] as List).length;
    }

    return Sample(
      id: json['_id'] ?? '',
      sampleNumber: 0, // Se asignará desde el índice en la lista
      collectedBy: collectedBy,
      date: date,
      temperature: temperature,
      humidity: humidity,
      precipitation: precipitation,
      cloudCover: cloudCover,
      luminosity: luminosity,
      generalConditions: generalConditions,
      uuid: json['uuid'] ?? '',
      createdAt: createdAt,
      updatedAt: updatedAt,
      speciesCount: speciesCount,
    );
  }

  // Getters útiles para mostrar en la UI
  String get sampleNumberText => sampleNumber.toString();
  String get temperatureText => '$temperature Grados';
  String get humidityText => '$humidity%';
  String get cloudCoverText => '$cloudCover octas';
}
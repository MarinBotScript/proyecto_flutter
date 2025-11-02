// lib/models/sample.dart
class Sample {
  final String id;
  final int sampleNumber;
  final String collectedBy;
  final String detail;
  final int fixedRadius;
  final int censusPeriod;
  final String detection;
  final String frequency;
  final double height;
  final String observations;
  final String uuid;
  final String createdAt;
  final String updatedAt;
  final int speciesCount;

  Sample({
    required this.id,
    required this.sampleNumber,
    required this.collectedBy,
    required this.detail,
    required this.fixedRadius,
    required this.censusPeriod,
    required this.detection,
    required this.frequency,
    required this.height,
    required this.observations,
    required this.uuid,
    required this.createdAt,
    required this.updatedAt,
    required this.speciesCount,
  });

  factory Sample.fromJson(Map<String, dynamic> json) {
    // Procesar collectedBy
    String collectedBy = 'No especifica';
    if (json['collectedBy'] != null && json['collectedBy'].toString().trim().isNotEmpty) {
      collectedBy = json['collectedBy'].toString();
    }

    // Procesar detail
    String detail = json['detail'] ?? 'No especificado';
    if (detail.trim().isEmpty || detail == 'null') {
      detail = 'No especificado';
    }

    // Procesar detection
    String detection = json['detection'] ?? 'No especifica';
    if (detection.trim().isEmpty) detection = 'No especifica';

    // Procesar frequency
    String frequency = json['frequency'] ?? 'No especifica';
    if (frequency.trim().isEmpty) frequency = 'No especifica';

    // Procesar observations
    String observations = json['observations'] ?? 'Sin observaciones';
    if (observations.trim().isEmpty) observations = 'Sin observaciones';

    // Procesar fechas
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

    // Contar especies
    int speciesCount = 0;
    if (json['species'] != null && json['species'] is List) {
      speciesCount = (json['species'] as List).length;
    }

    return Sample(
      id: json['_id'] ?? '',
      sampleNumber: json['sampleNumber'] ?? 0,
      collectedBy: collectedBy,
      detail: detail,
      fixedRadius: json['fixedRadius'] ?? 0,
      censusPeriod: json['censusPeriod'] ?? 0,
      detection: detection,
      frequency: frequency,
      height: (json['height'] ?? 0.0).toDouble(),
      observations: observations,
      uuid: json['uuid'] ?? '',
      createdAt: createdAt,
      updatedAt: updatedAt,
      speciesCount: speciesCount,
    );
  }

  // Getters útiles para mostrar en la UI
  String get sampleNumberText => sampleNumber.toString();
  String get fixedRadiusText => '$fixedRadius metros';
  String get censusPeriodText => '$censusPeriod días';
  String get heightText => '${height.toStringAsFixed(1)} m';
}
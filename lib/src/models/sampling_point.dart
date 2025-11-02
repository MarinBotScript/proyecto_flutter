// lib/models/sampling_point.dart
class SamplingPoint {
  final String id;
  final int pointNumber;
  final String samplingType;
  final String? detailSamplingType;
  final String detection;
  final String? figure;
  final int censusPeriod;
  final int fixedRadius;
  final String startDate;
  final String endDate;
  final String uuid;
  final Coordinates coordinates;
  final int samplesCount;

  SamplingPoint({
    required this.id,
    required this.pointNumber,
    required this.samplingType,
    this.detailSamplingType,
    required this.detection,
    this.figure,
    required this.censusPeriod,
    required this.fixedRadius,
    required this.startDate,
    required this.endDate,
    required this.uuid,
    required this.coordinates,
    required this.samplesCount,
  });

  factory SamplingPoint.fromJson(Map<String, dynamic> json) {
    return SamplingPoint(
      id: json['_id'] ?? '',
      pointNumber: json['pointNumber'] ?? 0,
      samplingType: json['samplingType'] ?? 'No especificado',
      detailSamplingType: json['detailSamplingType'],
      detection: json['detection'] ?? 'No especificado',
      figure: json['figure'],
      censusPeriod: json['censusPeriod'] ?? 0,
      fixedRadius: json['fixedRadius'] ?? 0,
      startDate: json['startDate'] ?? '',
      endDate: json['endDate'] ?? '',
      uuid: json['uuid'] ?? '',
      coordinates: Coordinates.fromJson(json['coordinates'] ?? {}),
      samplesCount: (json['samples'] as List?)?.length ?? 0,
    );
  }

  String get title => 'PUNTO DE MUESTREO $pointNumber';
  String get samplingPeriod => '$censusPeriod días';
  String get radiusText => '$fixedRadius metros';
  String get samplesCountText => '$samplesCount';
}

class Coordinates {
  final double latitude;
  final double longitude;

  Coordinates({
    required this.latitude,
    required this.longitude,
  });

  factory Coordinates.fromJson(Map<String, dynamic> json) {
    return Coordinates(
      latitude: (json['latitude'] ?? 0.0).toDouble(),
      longitude: (json['longitude'] ?? 0.0).toDouble(),
    );
  }
}
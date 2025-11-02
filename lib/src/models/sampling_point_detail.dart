// lib/models/sampling_point_detail.dart
class SamplingPointDetail {
  final String id;
  final int pointNumber;
  final String samplingType;
  final String detailSamplingType;
  final String detection;
  final String figure;
  final int censusPeriod;
  final int fixedRadius;
  final String startDate;
  final String endDate;
  final String uuid;
  final String createdAt;
  final String updatedAt;
  final SamplingCoordinates coordinates;
  final int samplesCount;

  SamplingPointDetail({
    required this.id,
    required this.pointNumber,
    required this.samplingType,
    required this.detailSamplingType,
    required this.detection,
    required this.figure,
    required this.censusPeriod,
    required this.fixedRadius,
    required this.startDate,
    required this.endDate,
    required this.uuid,
    required this.createdAt,
    required this.updatedAt,
    required this.coordinates,
    required this.samplesCount,
  });

  factory SamplingPointDetail.fromJson(Map<String, dynamic> json) {
    // Procesar tipo de muestreo
    String samplingType = json['samplingType'] ?? 'No especifica';
    if (samplingType.trim().isEmpty) samplingType = 'No especifica';

    // Procesar detalle del tipo de muestreo
    String detailSamplingType = json['detailSamplingType'] ?? 'No especifica';
    if (detailSamplingType.trim().isEmpty || detailSamplingType == 'null') {
      detailSamplingType = 'No especifica';
    }

    // Procesar detección
    String detection = json['detection'] ?? 'No especifica';
    if (detection.trim().isEmpty) detection = 'No especifica';

    // Procesar figura
    String figure = json['figure'] ?? 'No especifica';
    if (figure.trim().isEmpty || figure == 'null') {
      figure = 'No especifica';
    }

    // Procesar fechas
    String startDate = 'No especifica';
    if (json['startDate'] != null) {
      try {
        startDate = DateTime.parse(json['startDate']).toString().split(' ')[0];
      } catch (e) {
        startDate = 'No especifica';
      }
    }

    String endDate = 'No especifica';
    if (json['endDate'] != null) {
      try {
        endDate = DateTime.parse(json['endDate']).toString().split(' ')[0];
      } catch (e) {
        endDate = 'No especifica';
      }
    }

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

    // Procesar coordenadas
    SamplingCoordinates coordinates = SamplingCoordinates.fromJson(
      json['coordinates'] ?? {},
    );

    // Contar muestras
    int samplesCount = 0;
    if (json['samples'] != null && json['samples'] is List) {
      samplesCount = (json['samples'] as List).length;
    }

    return SamplingPointDetail(
      id: json['_id'] ?? '',
      pointNumber: json['pointNumber'] ?? 0,
      samplingType: samplingType,
      detailSamplingType: detailSamplingType,
      detection: detection,
      figure: figure,
      censusPeriod: json['censusPeriod'] ?? 0,
      fixedRadius: json['fixedRadius'] ?? 0,
      startDate: startDate,
      endDate: endDate,
      uuid: json['uuid'] ?? '',
      createdAt: createdAt,
      updatedAt: updatedAt,
      coordinates: coordinates,
      samplesCount: samplesCount,
    );
  }

  String get title => 'PUNTO $pointNumber';
  String get censusPeriodText => '$censusPeriod días';
  String get fixedRadiusText => '$fixedRadius metros';
}

class SamplingCoordinates {
  final String latitude;
  final String longitude;

  SamplingCoordinates({
    required this.latitude,
    required this.longitude,
  });

  factory SamplingCoordinates.fromJson(Map<String, dynamic> json) {
    String lat = 'No especifica';
    String lng = 'No especifica';

    if (json['latitude'] != null) {
      lat = json['latitude'].toString();
    }
    if (json['longitude'] != null) {
      lng = json['longitude'].toString();
    }

    return SamplingCoordinates(latitude: lat, longitude: lng);
  }
}
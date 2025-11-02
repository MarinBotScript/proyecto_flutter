// lib/services/api_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/project.dart';
import '../models/project_detail.dart';
import '../models/sampling_point.dart';
import '../models/sampling_point_detail.dart';
import '../models/sample.dart';

class ApiService {
  static const String baseUrl =
      'https://api-bird-field-logs.coderhub.run/api/external';
  static const String token =
      'd66eff0c81d3101436b6f1073bff4fbb3cedb8615d6d5632998d181c3eb51543';

  /// Obtiene todos los proyectos de investigación desde la API
  static Future<List<Project>> fetchProjects() async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/research'),
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);

        if (jsonData['success'] == true && jsonData['data'] != null) {
          List<dynamic> data = jsonData['data'];
          return data.map((json) => Project.fromJson(json)).toList();
        } else {
          throw Exception('Respuesta de API inválida');
        }
      } else {
        throw Exception('Error al cargar proyectos: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error de conexión: $e');
    }
  }

  /// Obtiene los detalles de un proyecto específico usando su UUID
  static Future<ProjectDetail> fetchProjectDetails(String uuid) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/details/research/$uuid'),
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);

        if (jsonData['success'] == true && jsonData['data'] != null) {
          return ProjectDetail.fromJson(jsonData['data']);
        } else {
          throw Exception('Respuesta de API inválida');
        }
      } else {
        throw Exception(
          'Error al cargar detalles del proyecto: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception('Error de conexión: $e');
    }
  }

  static Future<List<SamplingPoint>> fetchSamplingPoints(
    String projectUuid,
  ) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/details/research/$projectUuid'),
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);

        if (jsonData['success'] == true &&
            jsonData['data'] != null &&
            jsonData['data']['research'] != null &&
            jsonData['data']['research']['samplingPoints'] != null) {
          List<dynamic> samplingPointsData =
              jsonData['data']['research']['samplingPoints'];
          return samplingPointsData
              .map((json) => SamplingPoint.fromJson(json))
              .toList();
        } else {
          return [];
        }
      } else {
        throw Exception(
          'Error al cargar puntos de muestreo: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception('Error de conexión: $e');
    }
  }

  /// Obtiene los detalles de un punto de muestreo específico usando su UUID
  static Future<SamplingPointDetail> fetchSamplingPointDetails(
    String projectUuid,
    String samplingPointUuid,
  ) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/details/research/$projectUuid'),
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);

        if (jsonData['success'] == true &&
            jsonData['data'] != null &&
            jsonData['data']['research'] != null &&
            jsonData['data']['research']['samplingPoints'] != null) {
          List<dynamic> samplingPoints =
              jsonData['data']['research']['samplingPoints'];

          // Buscar el punto de muestreo específico por UUID
          final pointData = samplingPoints.firstWhere(
            (point) => point['uuid'] == samplingPointUuid,
            orElse: () => throw Exception('Punto de muestreo no encontrado'),
          );

          return SamplingPointDetail.fromJson(pointData);
        } else {
          throw Exception('Respuesta de API inválida');
        }
      } else {
        throw Exception(
          'Error al cargar detalles del punto de muestreo: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception('Error de conexión: $e');
    }
  }

  /// Obtiene las muestras de un punto de muestreo específico
  static Future<List<Sample>> fetchSamples(
    String projectUuid,
    String samplingPointUuid,
  ) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/details/research/$projectUuid'),
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);

        if (jsonData['success'] == true &&
            jsonData['data'] != null &&
            jsonData['data']['research'] != null &&
            jsonData['data']['research']['samplingPoints'] != null) {
          List<dynamic> samplingPoints =
              jsonData['data']['research']['samplingPoints'];

          // Buscar el punto de muestreo específico por UUID
          final pointData = samplingPoints.firstWhere(
            (point) => point['uuid'] == samplingPointUuid,
            orElse: () => throw Exception('Punto de muestreo no encontrado'),
          );

          // Obtener las muestras del punto
          if (pointData['samples'] != null && pointData['samples'] is List) {
            List<dynamic> samplesData = pointData['samples'];
            return samplesData.map((json) => Sample.fromJson(json)).toList();
          } else {
            return []; // Retornar lista vacía si no hay muestras
          }
        } else {
          throw Exception('Respuesta de API inválida');
        }
      } else {
        throw Exception('Error al cargar muestras: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error de conexión: $e');
    }
  }
}

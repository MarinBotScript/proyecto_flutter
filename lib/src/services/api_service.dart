// lib/services/api_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/project.dart';

class ApiService {
  static const String baseUrl = 'https://api-bird-field-logs.coderhub.run/api/external';
  static const String token = 'd66eff0c81d3101436b6f1073bff4fbb3cedb8615d6d5632998d181c3eb51543';

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
}
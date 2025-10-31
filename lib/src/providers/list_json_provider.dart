import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MyListJsonProvider {
  List<dynamic> list = [];

  //Constructor
  _MyListJsonProvider(){
    cargarData();
  }
  
  //Método para cargar data
  Future<List<dynamic>> cargarData() async {
    final datos = await rootBundle.loadString('data/my_list_json.json');
    Map dataMap = json.decode(datos);
    list = dataMap['rutas'];
    return list;
  }
}

//Instancia global
final myListJsonProvider = _MyListJsonProvider();
import "package:flutter/services.dart" show rootBundle;
import 'dart:convert';


class _MenuProvider {
  List<dynamic> opciones = [];
  _MenuProvider() {
    // cargarData();
  }

  // El furure son como las promesas de JS
  Future<List<dynamic>> cargarData() async {
    // con await modificamos su comportamiento asíncrono
    final resp = await rootBundle.loadString("data/menu_opts.json");
    Map dataMap = json.decode(resp);
    //print(dataMap);
    opciones = dataMap["rutas"];

    return opciones;
  }
}

// Crear instancia de la clase
final menuProvider = new _MenuProvider();
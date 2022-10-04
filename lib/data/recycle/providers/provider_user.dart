/*
import 'dart:convert';
import 'package:aplicacion_1/src/models/user.dart';
import 'package:flutter/services.dart' show rootBundle;

class ListaDatos {
  final List<Datos> dato;

  ListaDatos({
    required this.dato,
  });

  factory ListaDatos.fromJson(List<dynamic> parsedJson) {
    List<Datos> data = <Datos>[];
    data = parsedJson.map((i) => Datos.fromJson(i)).toList();
    return new ListaDatos(
      dato: data,
    );
  }
}

Future<String> _cargarJson() async {
  return await rootBundle.loadString('data/usuario.json');
}

Future<ListaDatos> cargarDatos() async {
  String jsonString = await _cargarJson();
  final jsonResponse = json.decode(jsonString);
  return ListaDatos.fromJson(jsonResponse);
}
*/
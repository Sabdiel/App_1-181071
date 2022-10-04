/*
import 'dart:convert';

class Datos {
  final String nombre;
  final String matricula;
  final String carrera;
  final String modalidad;
  final String materias;
  final String direccion;
  final String telefono;

  Datos(this.nombre, this.matricula, this.carrera, this.modalidad,
      this.materias, this.direccion, this.telefono);

  Datos.fromJson(Map<String, dynamic> json)
      : nombre = json['nombre'],
        matricula = json['matricula'],
        carrera = json['carrera'],
        modalidad = json['modalidad'],
        materias = json['materias'],
        direccion = json['direccion'],
        telefono = json['telefono'];

  Map<String, dynamic> toJson() => {
        'nombre': nombre,
        'matricula': matricula,
        'carrera': carrera,
        'modalidad': modalidad,
        'materias': materias,
        'direccion': direccion,
        'telefono': telefono
      };
}

class Datos {
  final String nombre;
  final String matricula;
  final String carrera;
  final String modalidad;
  final String materias;
  final String direccion;
  final String telefono;

  Datos(
      {required this.nombre,
      required this.matricula,
      required this.carrera,
      required this.modalidad,
      required this.materias,
      required this.direccion,
      required this.telefono});

  factory Datos.fromJson(Map<String, dynamic> toJson) {
    return new Datos(
        nombre: toJson["nombre"].toString(),
        matricula: toJson["matricula"],
        carrera: toJson["carrera"],
        modalidad: toJson["modalidad"],
        materias: toJson["materias"],
        direccion: toJson["direccion"],
        telefono: toJson["telefono"]);
  }
}
*/
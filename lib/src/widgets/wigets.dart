import 'package:flutter/material.dart';

class Academicos extends StatelessWidget {
  final String caratula,
      nombre,
      matricula,
      grado,
      grupo,
      carrera,
      promedio,
      modalidad;

  Academicos(
      {required this.caratula,
      required this.nombre,
      required this.matricula,
      required this.grado,
      required this.grupo,
      required this.carrera,
      required this.promedio,
      required this.modalidad});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Container(
                    child: ClipRRect(
                  child: Image(
                    image: AssetImage(this.caratula),
                    width: 150,
                  ),
                  borderRadius: BorderRadius.circular(10),
                )),
                VerticalDivider(),
                Column(
                  children: [
                    Text("Datos Académicos", style: _titulos()),
                    Divider(height: 15),
                    Container(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Nombre : ${this.nombre}",
                          style: _textosN(),
                        ),
                        Divider(height: 5.0),
                        Text(
                          "Matrícula : ${this.matricula}",
                          style: _textosN(),
                        ),
                        Divider(height: 5.0),
                        Text(
                          "Grado : ${this.grado}  Grupo : ${this.grupo}",
                          style: _textosN(),
                        ),
                        Divider(height: 5.0),
                        Text(
                          "Carrera : ${this.carrera}",
                          style: _textosN(),
                        ),
                        Divider(height: 5.0),
                        Text(
                          "Promedio : ${this.promedio}",
                          style: _textosN(),
                        ),
                        Divider(height: 5.0),
                        Text(
                          "Modalidad : ${this.modalidad}",
                          style: _textosN(),
                        )
                      ],
                    ))
                  ],
                )
              ],
            )));
  }
}

class DatosPersonales extends StatelessWidget {
  final String direccion, localidad, municipio, estado, telefono;

  DatosPersonales(
      {required this.direccion,
      required this.localidad,
      required this.municipio,
      required this.estado,
      required this.telefono});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                VerticalDivider(width: 140),
                Column(
                  children: [
                    Text("Datos Personales", style: _titulos()),
                    Divider(height: 15),
                    Container(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Dirección : ${this.direccion}",
                            style: _textosN()),
                        Divider(height: 5),
                        Text("Localidad : ${this.localidad}",
                            style: _textosN()),
                        Divider(height: 5),
                        Text("Municipio : ${this.municipio}",
                            style: _textosN()),
                        Divider(height: 5),
                        Text("Estado : ${this.estado}", style: _textosN()),
                        Divider(height: 5),
                        Text("Teléfono : ${this.telefono}", style: _textosN())
                      ],
                    ))
                  ],
                )
              ],
            )));
  }
}

class Materia extends StatelessWidget {
  final String nombreMateria;
  final String profesor;
  final Widget horario;

  const Materia(
      {required this.nombreMateria,
      required this.profesor,
      required this.horario});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(this.nombreMateria, style: _textosN()),
            Text(this.profesor, style: _textosN()),
            this.horario,
          ],
        ));
  }
}

class DiaHora extends StatelessWidget {
  final String diaHora;

  const DiaHora({required this.diaHora});

  @override
  Widget build(BuildContext context) {
    return Text(
      this.diaHora,
      style: _textos(),
    );
  }
}

TextStyle _titulos() {
  return TextStyle(fontFamily: 'Secular One', fontSize: 23);
}

TextStyle _textos() {
  return TextStyle(fontFamily: 'Indie Flower', fontSize: 12);
}

TextStyle _textosN() {
  return TextStyle(
      fontFamily: 'Indie Flower', fontSize: 12.5, fontWeight: FontWeight.bold);
}

import 'package:flutter/material.dart';
import 'package:aplicacion_1/src/widgets/wigets.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScrollController scrollController = ScrollController();
  bool showbtn = false;

  @override
  void initState() {
    scrollController.addListener(() {
      double showoffset = 10.0;
      if (scrollController.offset > showoffset) {
        showbtn = true;
        setState(() {});
      } else {
        showbtn = false;
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: _barra(),
          title: const Text('Mi Perfil',
              style: TextStyle(fontFamily: 'Secular One')),
        ),
        floatingActionButton: AnimatedOpacity(
          duration: Duration(milliseconds: 500),
          opacity: showbtn ? 1.0 : 0.0,
          child: FloatingActionButton(
            onPressed: () {
              scrollController.animateTo(0,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.fastOutSlowIn);
            },
            child: Icon(Icons.arrow_upward),
            backgroundColor: Colors.blue,
          ),
        ),
        body: ListView(
          controller: scrollController,
          children: <Widget>[
            _cardDatos(),
            _personales(),
            _materias(),
            _copyrigth()
          ],
        ));
  }
}

Widget _cardDatos() {
  return Academicos(
      caratula: 'images/profile.jpg',
      nombre: "Sabdiel Gutierrez Mejía",
      matricula: "181071",
      grado: "10°",
      grupo: "A",
      carrera: "IDGS",
      promedio: "8.4",
      modalidad: "Semanal");
}

Widget _personales() {
  return DatosPersonales(
      direccion: "Privada Luz Y Fuerza #11",
      localidad: "Tenango De las Flores",
      municipio: "Huauchinango",
      estado: "Puebla",
      telefono: "764 110 6374");
}

Widget _materias() {
  return Card(
      child: Container(
          padding: EdgeInsets.all(5.0),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Materias",
                      style:
                          TextStyle(fontFamily: 'Secular One', fontSize: 23)),
                  Divider(height: 30),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Materia(
                              nombreMateria: "Desarrollo Móvil Integral",
                              profesor:
                                  "M.T.I. Marco Antonio Ramírez Hernández",
                              horario: Column(
                                children: [
                                  DiaHora(diaHora: "Lunes 2:30 pm. - 4:30 pm."),
                                  DiaHora(
                                      diaHora: "Martes 4:30 pm. - 6:30 pm."),
                                  DiaHora(diaHora: "Jueves :30 pm. - 6:30 pm.")
                                ],
                              )),
                          Materia(
                              nombreMateria: "Negociación Empresarial",
                              profesor: "Héctor Valderrábano Gonzáles",
                              horario: DiaHora(
                                diaHora: "Martes 12:30 pm. - 2:30 pm.",
                              )),
                          Materia(
                              nombreMateria:
                                  "Destión del Proc. de Desarrollo de SW",
                              profesor: "M.C.C. Randolfo A. Santos Quiróz",
                              horario: Column(
                                children: [
                                  DiaHora(diaHora: "Mates 2:30 pm. - 4:30 pm."),
                                  DiaHora(
                                      diaHora: "Miércoles 2:30 pm. - 4:30 pm.")
                                ],
                              )),
                          Materia(
                              nombreMateria: "Tutoría Grupal",
                              profesor:
                                  "M.T.I. Marco Antonio Ramírez Hernández",
                              horario: DiaHora(
                                diaHora: "Lunes 11:00 am. - 12:00 pm.",
                              ))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Materia(
                              nombreMateria: "Aplicaciones Web Progresivas",
                              profesor: "ING. Iván E. García Quintero",
                              horario: Column(
                                children: [
                                  DiaHora(
                                      diaHora: "Jueves 2:30 pm. - 4:30 pm."),
                                  DiaHora(
                                      diaHora: "Viernes 4:30 pm. - 5:30 pm.")
                                ],
                              )),
                          Materia(
                              nombreMateria: "Creación de Videojuegos",
                              profesor: "ING. Ricardo Luna Santos",
                              horario: Column(
                                children: [
                                  DiaHora(
                                      diaHora: "Lunes: 12:30 pm. - 2:30 pm."),
                                  DiaHora(
                                    diaHora: "Martes: 11:00 am. - 12:00 pm.",
                                  )
                                ],
                              )),
                          Materia(
                              nombreMateria: "Inglés X",
                              profesor: "LIC. Lizbeth Castillo Cedillo",
                              horario: Column(
                                children: [
                                  DiaHora(
                                      diaHora: "Jueves 12:30 pm. - 2:30 pm."),
                                  DiaHora(
                                      diaHora: "Viernes 12:30 pm. - 2:30 pm.")
                                ],
                              )),
                          Materia(
                              nombreMateria: "Integradora",
                              profesor: "ING: Joan Salas Vera",
                              horario: DiaHora(
                                diaHora: "11:00 am. - 12:00 pm.",
                              )),
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          )));
}

Widget _copyrigth() {
  return Card(
      child: Container(
          padding: EdgeInsets.all(15),
          child: Row(
            children: <Widget>[
              VerticalDivider(
                width: 90,
              ),
              Text("Copyright by S G M",
                  style: TextStyle(fontFamily: 'Indie Flower', fontSize: 20)),
              VerticalDivider(width: 5),
              Icon(
                Icons.heart_broken,
                color: Colors.black,
                size: 20,
              )
            ],
          )));
}

Widget _barra() {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/e1.jpg'), fit: BoxFit.fill)),
  );
}

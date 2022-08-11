import 'package:animate_do/animate_do.dart';
import 'package:emergency_app/widgets/boton_gordo.dart';
import 'package:emergency_app/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//----------------------- ItemBoton ---------------------------

class ItemBoton {
  final IconData icon;
  final String texto;
  final Color color1;
  final Color color2;

  ItemBoton(this.icon, this.texto, this.color1, this.color2);
}

//----------------------- EmergencyScreen ---------------------------
class EmergencyScreen extends StatelessWidget {
  const EmergencyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = <ItemBoton>[
      new ItemBoton(FontAwesomeIcons.carBurst, 'Motor Accident',
          Color(0xff6989F5), Color(0xff906EF5)),
      new ItemBoton(FontAwesomeIcons.plus, 'Medical Emergency',
          Color(0xff66A9F2), Color(0xff536CF6)),
      new ItemBoton(FontAwesomeIcons.masksTheater, 'Theft / Harrasement',
          Color(0xffF2D572), Color(0xffE06AA3)),
      new ItemBoton(FontAwesomeIcons.personBiking, 'Awards', Color(0xff317183),
          Color(0xff46997D)),
      new ItemBoton(FontAwesomeIcons.carBurst, 'Motor Accident',
          Color(0xff6989F5), Color(0xff906EF5)),
      new ItemBoton(FontAwesomeIcons.plus, 'Medical Emergency',
          Color(0xff66A9F2), Color(0xff536CF6)),
      new ItemBoton(FontAwesomeIcons.masksTheater, 'Theft / Harrasement',
          Color(0xffF2D572), Color(0xffE06AA3)),
      new ItemBoton(FontAwesomeIcons.personBiking, 'Awards', Color(0xff317183),
          Color(0xff46997D)),
      new ItemBoton(FontAwesomeIcons.carBurst, 'Motor Accident',
          Color(0xff6989F5), Color(0xff906EF5)),
      new ItemBoton(FontAwesomeIcons.plus, 'Medical Emergency',
          Color(0xff66A9F2), Color(0xff536CF6)),
      new ItemBoton(FontAwesomeIcons.masksTheater, 'Theft / Harrasement',
          Color(0xffF2D572), Color(0xffE06AA3)),
      new ItemBoton(FontAwesomeIcons.personBiking, 'Awards', Color(0xff317183),
          Color(0xff46997D)),
    ];

    List itemMap = items
        .map(
          (item) => FadeInLeft(
            duration: Duration(microseconds: 300),
            child: BotonGordo(
              icon: item.icon,
              texto: item.texto,
              color1: item.color1,
              color2: item.color2,
              onPress: () {
                print('hola');
              },
            ),
          ),
        )
        .toList();

    return Scaffold(
        body: Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 200),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(
                height: 80,
              ),
              ...itemMap
            ],
          ),
        ),
        _Encabezado(),
      ],
    ));
  }
}

//----------------------- _Encabezado ---------------------------

class _Encabezado extends StatelessWidget {
  const _Encabezado({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconHeader(
            icon: FontAwesomeIcons.plus,
            titulo: "Pizzería",
            subtitulo: "Pedí tu sabor preferido"),
        Positioned(
          right: 5,
          top: 40,
          child: RawMaterialButton(
            onPressed: () {},
            shape: CircleBorder(),
            padding: EdgeInsets.all(15),
            child: FaIcon(
              FontAwesomeIcons.ellipsisVertical,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}

//----------------------- BotonGordoTemp ---------------------------

class BotonGordoTemp extends StatelessWidget {
  const BotonGordoTemp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BotonGordo(
      icon: FontAwesomeIcons.caravan,
      texto: "Casillas rodantes",
      color1: Colors.red,
      color2: Colors.yellow,
      onPress: () {
        print("Hola");
      },
    );
  }
}

//----------------------- _PageHeader ---------------------------

class _PageHeader extends StatelessWidget {
  const _PageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconHeader(
      icon: FontAwesomeIcons.circlePlus,
      titulo: "Vos has solicitado",
      subtitulo: "Asistencia Mecánica",
      color1: Colors.red,
      color2: Colors.orange,
    );
  }
}

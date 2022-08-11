import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BotonGordo extends StatelessWidget {
  final IconData icon;
  final String texto;
  final Color color1;
  final Color color2;
  final Function onPress;

  const BotonGordo(
      {this.icon = FontAwesomeIcons.plus,
      required this.texto,
      this.color1 = const Color(0xff6989f5),
      this.color2 = const Color(0xff906ef5),
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress(),
      child: Stack(
        children: [
          _BotonGordoBackground(
            icon: icon,
            color1: color1,
            color2: color2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 140, width: 40),
              FaIcon(
                icon,
                size: 40,
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  texto,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              FaIcon(
                FontAwesomeIcons.chevronRight,
                size: 30,
                color: Colors.white,
              ),
              SizedBox(
                width: 40,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _BotonGordoBackground extends StatelessWidget {
  final IconData icon;
  final Color color1;
  final Color color2;

  const _BotonGordoBackground({
    this.icon = FontAwesomeIcons.plus,
    this.color1 = const Color(0xff6989f5),
    this.color2 = const Color(0xff906ef5),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.red,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.7),
            offset: Offset(4, 6),
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.circular(25),
        gradient: LinearGradient(colors: [
          color1,
          color2,
        ]),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Stack(children: [
          Positioned(
            right: -20,
            top: -20,
            child: FaIcon(
              icon,
              size: 150,
              color: Colors.white.withOpacity(0.2),
            ),
          ),
        ]),
      ),
    );
  }
}

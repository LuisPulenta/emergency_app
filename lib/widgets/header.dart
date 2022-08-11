import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconHeader extends StatelessWidget {
  final IconData icon;
  final String titulo;
  final String subtitulo;
  final Color color1;
  final Color color2;

  IconHeader({
    required this.icon,
    required this.titulo,
    required this.subtitulo,
    this.color1 = const Color(0xff526bf6),
    this.color2 = const Color(0xff67acf2),
  });

  @override
  Widget build(BuildContext context) {
    final Color colorBlanco = Colors.white.withOpacity(0.7);
    return Stack(
      children: [
        _IconHeaderBackground(
          color1: color1,
          color2: color2,
        ),
        Positioned(
          top: -50,
          left: -70,
          child: FaIcon(
            icon,
            size: 250,
            color: Colors.white.withOpacity(0.2),
          ),
        ),
        Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Text(
              titulo,
              style: TextStyle(
                color: colorBlanco,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
              width: double.infinity,
            ),
            Text(
              subtitulo,
              style: TextStyle(
                  color: colorBlanco,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            FaIcon(
              icon,
              size: 80,
              color: Colors.white,
            ),
          ],
        )
      ],
    );
  }
}

class _IconHeaderBackground extends StatelessWidget {
  final Color color1;
  final Color color2;
  const _IconHeaderBackground({
    this.color1 = const Color(0xff526bf6),
    this.color2 = const Color(0xff67acf2),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(100),
        ),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              color1,
              color2,
            ]),
      ),
    );
  }
}

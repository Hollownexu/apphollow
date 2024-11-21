import 'package:flutter/material.dart';

class Boton extends StatelessWidget {
  final String titulo;
  final EdgeInsets padding;
  final Color textColor;
  final double width;
  final double height;

  const Boton({
    required this.titulo,
    required this.padding,
    required this.textColor,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF9D62F5),
              Color(0xFF6049CD),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            titulo,
            style: TextStyle(color: textColor),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Boton extends StatelessWidget {
  final String titulo;
  final EdgeInsets padding;
  final Color textColor;
  final double width;
  final double height;
  final VoidCallback onPressed; // Nueva propiedad para la función de navegación

  const Boton({
    required this.titulo,
    required this.padding,
    required this.textColor,
    required this.width,
    required this.height,
    required this.onPressed, // Requerir la función en el constructor
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: InkWell(
        onTap: onPressed, // Usa onTap para capturar el clic
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xFF9D62F5),
                Color(0xFF6049CD),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(32),
          ),
          child: Center(
            child: Text(
              titulo,
              style: TextStyle(color: textColor),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

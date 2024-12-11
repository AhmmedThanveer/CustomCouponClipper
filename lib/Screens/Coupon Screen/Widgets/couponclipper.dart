import 'package:flutter/material.dart';

class CuponClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // Main rectangle
    path
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();

    // Create scallop/wave pattern on the left side
    double scallopRadius = size.height / 8;
    Path scallopPath = Path();

    for (double i = 0; i < size.height; i += scallopRadius * 2) {
      scallopPath.addOval(Rect.fromCircle(
        center: Offset(0, i + scallopRadius),
        radius: scallopRadius,
      ));
    }

    // Subtract scallops from the main rectangle
    return Path.combine(PathOperation.difference, path, scallopPath);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

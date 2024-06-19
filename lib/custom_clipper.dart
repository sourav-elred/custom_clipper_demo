import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // Define the clipping path
    final path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
      size.width / 4, size.height - 50, // Control point
      size.width / 2, size.height - 20, // End point
    );
    path.quadraticBezierTo(
      3 / 4 * size.width, size.height, // Control point
      size.width, size.height - 30, // End point
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

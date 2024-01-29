import 'package:flutter/material.dart';

class TsClip1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.quadraticBezierTo(0, 5, size.width, 0);

    path.lineTo(0, size.height);

    path.quadraticBezierTo(size.width / 2, 0.5, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}

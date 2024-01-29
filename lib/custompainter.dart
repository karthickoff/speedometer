import 'package:flutter/material.dart';
import 'dart:math';

class CurvePainter extends CustomPainter {
  final Color callback;

  CurvePainter({required this.callback});
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = callback;
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    path.moveTo(0, size.height * 0.5);
    path.quadraticBezierTo(
        (size.width / 2), (size.height / 4), size.width, size.height * 0.5);
    path.lineTo(size.width, 0);
    // path.moveTo(size.width, 0);
    path.quadraticBezierTo((size.width / 2), -(size.height / 2), 0, 0);
    // path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

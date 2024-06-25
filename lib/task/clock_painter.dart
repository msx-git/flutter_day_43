import 'dart:math';

import 'package:flutter/material.dart';

class ClockPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double radius = min(size.width / 2, size.height / 2);
    Offset center = Offset(size.width / 2, size.height / 2);

    /// Clock body
    final clockBodyPaint = Paint();
    clockBodyPaint.style = PaintingStyle.fill;
    clockBodyPaint.color = const Color(0xff2d3050);
    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), 120, clockBodyPaint);

    /// Clock stroke
    final clockStrokePaint = Paint();
    clockStrokePaint.style = PaintingStyle.stroke;
    clockStrokePaint.strokeWidth = 12;
    clockStrokePaint.color = const Color(0xff9ea2bd);
    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), 120, clockStrokePaint);

    /// Draw the indicators
    Paint indicatorPaint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1.0;

    for (int i = 0; i < 60; i++) {
      double angle = (2 * pi * i) / 60;
      double startX = center.dx + radius * cos(angle);
      double startY = center.dy + radius * sin(angle);
      double endX =
          center.dx + (radius - 10) * cos(angle); // Adjust the length as needed
      double endY = center.dy + (radius - 10) * sin(angle);
      canvas.drawLine(
          Offset(startX, startY), Offset(endX, endY), indicatorPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

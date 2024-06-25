import 'package:flutter/material.dart';

class ClockCenter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    /// Clock center
    final clockCenterPaint = Paint();
    clockCenterPaint.style = PaintingStyle.fill;
    clockCenterPaint.color = const Color(0xffb9bcd1);
    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), 15, clockCenterPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

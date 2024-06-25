import 'package:flutter/material.dart';

class HourPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    /// Clock hour pointer
    final hourPaint = Paint();
    hourPaint.strokeWidth = 11;
    hourPaint.style = PaintingStyle.stroke;
    hourPaint.color = const Color(0xffbf4382);
    hourPaint.strokeJoin = StrokeJoin.round;
    final hourPath = Path();
    hourPath.moveTo(size.width / 2, size.height / 2 - 15);
    hourPath.lineTo(size.width / 2, 80);
    hourPath.close();
    canvas.drawPath(hourPath, hourPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

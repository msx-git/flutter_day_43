import 'package:flutter/material.dart';

class MinutePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    /// Clock minute pointer
    final minutePaint = Paint();
    minutePaint.strokeWidth = 8;
    minutePaint.style = PaintingStyle.stroke;
    minutePaint.strokeJoin = StrokeJoin.round;
    minutePaint.color = const Color(0xff4f7bec);
    final minutePath = Path();
    minutePath.moveTo(size.width / 2, size.height / 2 - 15);
    minutePath.lineTo(size.width / 2, 60);
    minutePath.close();
    canvas.drawPath(minutePath, minutePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

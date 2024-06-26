import 'package:flutter/material.dart';

class SecondPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    /// Clock second pointer
    final secondPaint = Paint();
    secondPaint.strokeWidth = 5;
    secondPaint.style = PaintingStyle.stroke;
    secondPaint.strokeJoin = StrokeJoin.round;
    secondPaint.color = const Color(0xffec8b4f);
    final secondPath = Path();
    secondPath.moveTo(size.width / 2, size.height / 2 - 15);
    secondPath.lineTo(size.width / 2, 70);
    secondPath.close();
    canvas.drawPath(secondPath, secondPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
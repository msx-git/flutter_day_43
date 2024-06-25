import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    /// Bu yerda chizish jarayoni bo'ladi

    /// Draw Circle
    final paintCircle = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;
    canvas.drawCircle(const Offset(160, 120), 100, paintCircle);

    /// Draw Oval
    final paintOval = Paint()
      ..color = Colors.teal
      ..style = PaintingStyle.fill
      ..strokeWidth = 5;
    const oval = Rect.fromLTWH(0, 230, 200, 100);
    canvas.drawOval(oval, paintOval);

    /// Draw Star
    final paintStar = Paint();
    final starPath = Path();
    starPath.moveTo(size.width / 2, size.height / 2 - 50);
    starPath.lineTo(size.width / 2 + 30, size.height / 2 + 50);
    starPath.lineTo(size.width / 2 - 45, size.height / 2 - 10);
    starPath.lineTo(size.width / 2 + 45, size.height / 2 - 10);
    starPath.lineTo(size.width / 2 - 30, size.height / 2 + 50);
    starPath.close();
    canvas.drawPath(starPath, paintStar);

    /// Draw Rectangle
    final paintRectangle = Paint();
    paintRectangle.color = Colors.deepPurple;
    paintRectangle.style = PaintingStyle.stroke;
    paintRectangle.strokeWidth = 10;
    paintRectangle.strokeCap = StrokeCap.round;

    const rect = Rect.fromLTWH(0, 375, 200, 100);
    const cube = Rect.fromLTWH(220, 375, 100, 100);
    canvas.drawRect(rect, paintRectangle);
    canvas.drawRRect(
      RRect.fromRectAndRadius(cube, const Radius.circular(20)),
      paintRectangle,
    );

    /// Draw Path
    final paintLine = Paint();
    paintLine.strokeWidth = 15;
    paintLine.color = Colors.redAccent;
    paintLine.style = PaintingStyle.stroke;
    final path = Path();
    path.moveTo(0, 550);
    path.lineTo(300, 550);
    path.close();
    canvas.drawPath(path, paintLine);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

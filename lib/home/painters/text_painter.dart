import 'package:flutter/material.dart';

class MyTextPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var textPainter = TextPainter(
      text: const TextSpan(
        text: 'Salom, Flutter!',
        style: TextStyle(color: Colors.teal, fontSize: 24),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(minWidth: 0, maxWidth: size.width);
    textPainter.paint(
      canvas,
      const Offset(50, 200),
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

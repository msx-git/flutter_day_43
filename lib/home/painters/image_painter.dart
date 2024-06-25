import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class ImagePainter extends CustomPainter {
  final ui.Image? image;

  ImagePainter(this.image);

  @override
  void paint(Canvas canvas, Size size) {
    if (image != null) {
      // canvas.drawImage(image!, Offset.zero, Paint());
      paintImage(
        canvas: canvas,
        rect: const Rect.fromLTWH(0, 0, 300, 300),
        image: image!,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

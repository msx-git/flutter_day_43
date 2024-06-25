
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'painters/image_painter.dart';
import 'painters/my_painter.dart';
import 'painters/text_painter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ui.Image? image;

  @override
  void initState() {
    super.initState();
    loadImage().then((_) => setState(() {}));
  }

  loadImage() async {
    final data = await rootBundle.load('assets/3.png');
    final bytes = data.buffer.asUint8List();
    final codec = await ui.instantiateImageCodec(bytes);
    final frameInfo = await codec.getNextFrame();
    image = frameInfo.image;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Painter'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(width: double.infinity),
            CustomPaint(
              size: const Size(300, 500),
              painter: MyPainter(),
            ),
            CustomPaint(
              size: const Size(300, 300),
              painter: MyTextPainter(),
            ),
            CustomPaint(
              size: const Size(300, 300),
              painter: ImagePainter(image),
            )
          ],
        ),
      ),
    );
  }
}

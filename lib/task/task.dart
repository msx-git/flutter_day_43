import 'dart:async';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day_43/task/clock_center.dart';
import 'package:flutter_day_43/task/hour_painter.dart';
import 'package:flutter_day_43/task/minute_painter.dart';
import 'package:flutter_day_43/task/second_painter.dart';

import 'clock_painter.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  double secondTicker = 0;
  double minuteTicker = 0;
  double hourTicker = 0;

  @override
  void initState() {
    super.initState();

    /// Second Ticker
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (kDebugMode) {
        print("Second: ${timer.tick}");
      }
      secondTicker += pi * 2 / 60;
      setState(() {});
    });

    /// Minute Ticker
    Timer.periodic(const Duration(minutes: 1), (timer) {
      if (kDebugMode) {
        print("Minute: ${timer.tick}");
      }
      minuteTicker += pi * 2 / 60;
    });

    /// Hour Ticker
    Timer.periodic(const Duration(hours: 1), (timer) {
      if (kDebugMode) {
        print("Hour: ${timer.tick}");
      }
      hourTicker += pi * 2 / 60;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0c0b23),
      body: Center(
        child: Stack(
          children: [
            CustomPaint(
              size: const Size(300, 300),
              painter: ClockPainter(),
            ),
            Transform.rotate(
              angle: secondTicker,
              child: CustomPaint(
                size: const Size(300, 300),
                painter: SecondPainter(),
              ),
            ),
            Transform.rotate(
              angle: minuteTicker,
              child: CustomPaint(
                size: const Size(300, 300),
                painter: MinutePainter(),
              ),
            ),
            Transform.rotate(
              angle: hourTicker,
              child: CustomPaint(
                size: const Size(300, 300),
                painter: HourPainter(),
              ),
            ),
            CustomPaint(
              size: const Size(300, 300),
              painter: ClockCenter(),
            ),
          ],
        ),
      ),
    );
  }
}

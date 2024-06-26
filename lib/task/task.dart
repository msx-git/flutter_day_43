import 'dart:async';
import 'dart:math';

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

    /// Initialize tickers based on current time
    DateTime now = DateTime.now();
    secondTicker = (2 * pi * now.second) / 60;
    minuteTicker = (2 * pi * now.minute) / 60;
    hourTicker = (2 * pi * now.hour) / 12 + (2 * pi * now.minute) / (12 * 60);

    /// Second Ticker
    Timer.periodic(const Duration(seconds: 1),
        (timer) => setState(() => secondTicker += pi * 2 / 60));

    /// Minute Ticker
    Timer.periodic(
        const Duration(minutes: 1), (timer) => minuteTicker += pi * 2 / 60);

    /// Hour Ticker
    Timer.periodic(
        const Duration(hours: 1), (timer) => hourTicker += pi * 2 / 60);
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

import 'dart:math';

import 'package:flutter/material.dart';

import 'clock_text.dart';

class ClockDialPainter extends CustomPainter {
  final clockText;

  final hourAndMinTickMarkLength = 20.0;
  final hourAndMinTickMarkWidth = 5.0;

  final Paint tickPaint;
  final TextPainter textPainter;

  ClockDialPainter({this.clockText = ClockText.roman})
      : tickPaint = Paint(),
        textPainter = TextPainter(
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
        ) {
    tickPaint.color = Colors.white;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var tickMarkLength;
    const angle = 2 * pi / 60;
    final radius = size.width / 2;
    canvas.save();

    // drawing
    canvas.translate(radius, radius);
    for (var i = 0; i < 60; i++) {
      //make the length and stroke of the tick marker longer and thicker depending
      tickMarkLength = hourAndMinTickMarkLength;
      tickPaint.strokeWidth = hourAndMinTickMarkWidth;
      canvas.drawLine(Offset(0.0, radius*.95),
          Offset(0.0, (radius*.95) + tickMarkLength), tickPaint);

      canvas.rotate(angle);
    }

    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

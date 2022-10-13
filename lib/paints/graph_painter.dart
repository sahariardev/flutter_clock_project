

import 'package:flutter/material.dart';

class GraphPainter extends CustomPainter {

  Paint trackBarPaint = Paint()
  ..color = Color(0xff818aab)
  ..style = PaintingStyle.stroke
  ..strokeCap = StrokeCap.round
  ..strokeWidth = 12;

  Paint trackPaint = Paint()
    ..color = Color(0xffdee6f1)
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 12;


  @override
  void paint(Canvas canvas, Size size) {
    Path trackPath = Path();
    Path trackBarPath = Path();


    for(double width=0; width<100; width = width + 20) {

      trackPath.moveTo(8 + width, size.height);
      trackPath.lineTo(8 + width, 0);

      trackBarPath.moveTo(8 + width, size.height);
      trackBarPath.lineTo(8+ width, size.height*.5 + (width * .4));

      canvas.drawPath(trackPath, trackPaint);
      canvas.drawPath(trackBarPath, trackBarPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}
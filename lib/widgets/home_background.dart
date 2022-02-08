import 'package:crypto/common/colors.dart';
import 'package:flutter/material.dart';

class HomeBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = customPrimaryColor;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(size.width * 0.85, 0);
    path.quadraticBezierTo(size.width * 0.85, 0, size.width, 40);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

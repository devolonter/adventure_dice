import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class DicePainter extends CustomPainter {
  final int sides;
  final Color color;
  final Color textColor;
  final bool withText;

  DicePainter(
      {required this.sides,
      required this.color,
      required this.textColor,
      this.withText = true});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    switch (sides) {
      case 2:
        canvas.drawCircle(
            Offset(size.width / 2, size.height / 2), size.width * 0.5, paint);
        break;
      case 4:
        Offset p1 = Offset(size.width / 2, -size.height / 8);
        Offset p2 = Offset(-size.width / 6, size.height);
        Offset p3 = Offset(size.width + size.width / 6, size.height);

        final double radius = size.width * 0.05;

        Path path = Path();
        path.moveTo(p1.dx + radius, p1.dy + radius);
        path.quadraticBezierTo(p1.dx, p1.dy, p1.dx - radius, p1.dy + radius);
        path.lineTo(p2.dx + radius, p2.dy - radius * 3);
        path.quadraticBezierTo(
            p2.dx, p2.dy - radius, p2.dx + radius * 2, p2.dy);
        path.lineTo(p3.dx - radius * 2, p3.dy);
        path.quadraticBezierTo(
            p3.dx, p3.dy - radius, p3.dx - radius, p3.dy - radius * 3);
        path.close();

        canvas.drawPath(path, paint);
      case 6:
        canvas.drawRRect(
            RRect.fromRectAndRadius(
                Rect.fromLTWH(0, 0, size.width, size.height),
                Radius.circular(size.width * 0.1)),
            paint);
        break;
      case 8:
      case 10:
      case 100:
        final PictureRecorder pictureRecorder = PictureRecorder();
        final Canvas pictureCanvas = Canvas(pictureRecorder);

        pictureCanvas.translate(size.width / 2, size.height / 2);
        pictureCanvas.rotate(45 * pi / 180);

        pictureCanvas.drawRRect(
            RRect.fromRectAndRadius(
                Rect.fromLTWH(
                    -size.width / 2, -size.height / 2, size.width, size.height),
                Radius.circular(size.width * 0.1)),
            paint);

        final Picture picture = pictureRecorder.endRecording();

        canvas.save();
        canvas.translate(size.width / 2, size.height / 2);

        if (sides == 10 || sides == 100) {
          canvas.scale(1.0, 0.9);
        } else {
          canvas.scale(0.85, 1.0);
        }

        canvas.translate(-size.width / 2, -size.height / 2);
        canvas.drawPicture(picture);
        canvas.restore();
        break;
      case 12:
        double radius = size.width * 0.05;

        Offset p1 = Offset(size.width / 2, -radius * 3.0);
        Offset p2 = Offset(-radius * 2.0, size.height / 2.5);
        Offset p3 = Offset(size.width / 6, size.height);
        Offset p4 = Offset(size.width - size.width / 6, size.height);
        Offset p5 = Offset(size.width + radius * 2.0, size.height / 2.5);

        Path path = Path();
        path.moveTo(p1.dx + radius, p1.dy + radius);
        path.arcToPoint(Offset(p1.dx - radius, p1.dy + radius),
            radius: Radius.elliptical(radius * 1.25, radius * 0.75),
            clockwise: false);
        path.lineTo(p2.dx + radius, p2.dy - radius);
        path.arcToPoint(Offset(p2.dx + radius, p2.dy + radius),
            radius: Radius.elliptical(radius * 0.75, radius * 1.25),
            clockwise: false);
        path.lineTo(p3.dx - radius, p3.dy - radius * 2.0);
        path.arcToPoint(Offset(p3.dx + radius, p3.dy),
            radius: Radius.circular(radius * 3.0), clockwise: false);
        path.lineTo(p4.dx - radius, p4.dy);
        path.arcToPoint(Offset(p4.dx + radius, p4.dy - radius * 2.0),
            radius: Radius.circular(radius * 3.0), clockwise: false);
        path.lineTo(p5.dx - radius, p5.dy + radius);
        path.arcToPoint(Offset(p5.dx - radius, p5.dy - radius),
            radius: Radius.elliptical(radius * 0.75, radius * 1.25),
            clockwise: false);
        path.close();

        canvas.drawPath(path, paint);
        break;
      case 20:
        double radius = size.width * 0.05;

        Offset p1 = Offset(size.width / 2, -radius * 3.0);
        Offset p2 = Offset(-radius * 2.0, size.height / 4);
        Offset p3 =
            Offset(-radius * 2.0, size.height - size.height / 4 + radius);
        Offset p4 = Offset(size.width / 2, size.height + radius * 3.0);
        Offset p5 = Offset(
            size.width + radius * 2.0, size.height - size.height / 4 + radius);
        Offset p6 = Offset(size.width + radius * 2.0, size.height / 4);

        Path path = Path();
        path.moveTo(p1.dx + radius, p1.dy + radius);
        path.arcToPoint(Offset(p1.dx - radius, p1.dy + radius),
            radius: Radius.circular(radius * 2.0), clockwise: false);
        path.lineTo(p2.dx + radius * 2.0, p2.dy - radius);
        path.arcToPoint(Offset(p2.dx + radius, p2.dy + radius),
            radius: Radius.circular(radius * 2.0), clockwise: false);
        path.lineTo(p3.dx + radius, p3.dy - radius);
        path.arcToPoint(Offset(p3.dx + radius * 2.0, p3.dy + radius),
            radius: Radius.circular(radius * 2.0), clockwise: false);
        path.lineTo(p4.dx - radius, p4.dy - radius);
        path.arcToPoint(Offset(p4.dx + radius, p4.dy - radius),
            radius: Radius.circular(radius * 2.0), clockwise: false);
        path.lineTo(p5.dx - radius * 2.0, p5.dy + radius);
        path.arcToPoint(Offset(p5.dx - radius, p5.dy - radius),
            radius: Radius.circular(radius * 2.0), clockwise: false);
        path.lineTo(p6.dx - radius, p6.dy + radius);
        path.arcToPoint(Offset(p6.dx - radius * 2.0, p6.dy - radius),
            radius: Radius.circular(radius * 2.0), clockwise: false);
        path.close();

        canvas.drawPath(path, paint);

        canvas.drawCircle(
            Offset(size.width / 2, size.height / 2), radius * 1.5, paint);
        break;
    }

    if (!withText) {
      return;
    }

    final TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: '$sides',
        style: TextStyle(
          color: textColor,
          fontSize: size.width * 0.33,
          fontWeight: FontWeight.bold,
        ),
      ),
      textDirection: TextDirection.ltr,
    );

    textPainter.layout();
    textPainter.paint(
      canvas,
      Offset(
        size.width / 2 - textPainter.width / 2,
        size.height / 2 - textPainter.height / 2,
      ),
    );
  }

  @override
  bool shouldRepaint(DicePainter oldDelegate) {
    return oldDelegate.sides != sides;
  }
}

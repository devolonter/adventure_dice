import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import 'die_painter.dart';

class DieIcon extends StatelessWidget {
  final Size size;
  final Die die;
  final Color color;
  final Color textColor;
  final bool withText;


  const DieIcon({
    super.key,
    required this.size,
    required this.die,
    this.color = Colors.black,
    this.textColor = Colors.white,
    this.withText = true,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: size * 0.55,
      painter: DiePainter(
        sides: die.sides,
        color: color,
        textColor: textColor,
        withText: withText,
      ),
    );
  }
}
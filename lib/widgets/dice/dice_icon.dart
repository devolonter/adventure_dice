import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import 'dice_painter.dart';

class DiceIcon extends StatelessWidget {
  final Size size;
  final Dice dice;
  final Color color;
  final Color textColor;
  final bool withText;


  const DiceIcon({
    super.key,
    required this.size,
    required this.dice,
    this.color = Colors.black,
    this.textColor = Colors.white,
    this.withText = true,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: size * 0.55,
      painter: DicePainter(
        sides: dice.sides,
        color: color,
        textColor: textColor,
        withText: withText,
      ),
    );
  }
}
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import 'dice_painter.dart';

class DiceSingle extends StatelessWidget {
  const DiceSingle({
    super.key,
    required this.dice,
    required this.size,
  });

  final Dice dice;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: CustomPaint(
        size: size * 0.6,
        painter: DicePainter(
          sides: dice.sides,
          color: Colors.black,
          textColor: Colors.white,
        ),
      ),
    );
  }
}
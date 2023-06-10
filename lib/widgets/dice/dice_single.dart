import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/dice_rolls.dart';
import 'dice_painter.dart';

class DiceSingle extends ConsumerWidget {
  const DiceSingle({
    super.key,
    required this.dice,
    required this.size,
  });

  final Dice dice;
  final Size size;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
      onPressed: () => ref.read(diceRollsProvider.notifier).rollDice(dice),
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: CustomPaint(
        size: size * 0.55,
        painter: DicePainter(
          sides: dice.sides,
          color: Colors.black,
          textColor: Colors.white,
        ),
      ),
    );
  }
}
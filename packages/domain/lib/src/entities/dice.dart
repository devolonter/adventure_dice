import 'dart:math';

import '../../domain.dart';

class Dice {
  final int sides;

  Dice(this.sides);

  Roll roll() {
    return Roll(this, Random().nextInt(sides) + 1);
  }
}
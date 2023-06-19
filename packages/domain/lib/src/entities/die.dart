import 'dart:math';

import '../../domain.dart';

class Die {
  final int sides;

  Die(this.sides);

  Roll roll() {
    return Roll(this, Random().nextInt(sides) + 1);
  }
}
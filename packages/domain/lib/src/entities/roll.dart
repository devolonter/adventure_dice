import 'dart:math';

import 'dice.dart';

class Roll {
  final int? id;
  final Dice dice;
  final int result;

  Roll(this.dice, this.result, {this.id});
}
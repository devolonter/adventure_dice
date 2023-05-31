import 'dart:math';

import '../../entities/dice.dart';
import '../../entities/roll.dart';
import '../../repositories/rolls_repository.dart';

class RollDice {
  final RollsRepository _rollsRepository;

  RollDice(this._rollsRepository);

  Future<Roll> call(Dice dice) async {
    final roll = Roll(dice, Random().nextInt(dice.sides) + 1);
    await _rollsRepository.save(roll);
    return roll;
  }
}
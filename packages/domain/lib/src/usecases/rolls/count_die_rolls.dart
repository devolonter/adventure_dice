import '../../entities/die.dart';
import '../../entities/roll.dart';

class CountDieRolls {
  final List<Roll> rolls;

  CountDieRolls(this.rolls);

  int call(Die die) {
    final Iterable<Roll> rolls =
        this.rolls.where((roll) => roll.die.sides == die.sides);
    return rolls.length +
        rolls.fold(0, (sum, roll) => sum + roll.history.length);
  }
}

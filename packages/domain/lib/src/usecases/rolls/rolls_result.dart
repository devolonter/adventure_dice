import '../../entities/roll.dart';

class RollsResult {
  final List<Roll> rolls;

  const RollsResult(this.rolls);

  int call() => rolls.fold(0, (sum, roll) => sum + roll.result);
}

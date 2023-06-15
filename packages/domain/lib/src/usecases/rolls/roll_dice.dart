import '../../entities/dice.dart';
import '../../entities/roll.dart';
import '../../repositories/rolls_repository.dart';

class RollDice {
  final RollsRepository _rollsRepository;

  RollDice(this._rollsRepository);

  Future<List<Roll>> call(Dice dice, {int count = 1}) async {
    final rolls = <Roll>[];

    for (var i = 0; i < count; i++) {
      rolls.add(dice.roll());
    }

    await _rollsRepository.save(rolls);
    return rolls;
  }
}
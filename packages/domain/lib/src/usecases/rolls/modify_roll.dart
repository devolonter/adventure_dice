import '../../entities/roll.dart';
import '../../repositories/rolls_repository.dart';

class ModifyRoll {
  final RollsRepository _rollsRepository;

  ModifyRoll(this._rollsRepository);

  Future<Roll> call(Roll roll, int modifier) async {
    final newRoll = Roll(roll.dice, roll.result + modifier, id: roll.id);
    await _rollsRepository.save(newRoll);
    return newRoll;
  }
}
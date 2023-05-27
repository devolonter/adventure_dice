import '../../entities/roll.dart';
import '../../repositories/rolls_repository.dart';

class ModifyRollUseCase {
  final RollsRepository _rollsRepository;

  ModifyRollUseCase(this._rollsRepository);

  Future<Roll> call(Roll roll, int modifier) async {
    final newRoll = Roll(roll.dice, roll.result + modifier, id: roll.id);
    await _rollsRepository.save(newRoll);
    return newRoll;
  }
}
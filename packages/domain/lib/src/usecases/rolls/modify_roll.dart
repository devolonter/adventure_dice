import '../../entities/roll.dart';
import '../../repositories/rolls_repository.dart';

class ModifyRoll {
  final RollsRepository _rollsRepository;

  ModifyRoll(this._rollsRepository);

  Future<Roll> call(Roll roll, RollModifier modifier) async {
    final Roll newRoll = roll.addModifier(modifier);
    await _rollsRepository.save([newRoll]);
    return newRoll;
  }
}
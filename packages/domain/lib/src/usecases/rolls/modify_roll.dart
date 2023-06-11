import '../../entities/roll.dart';
import '../../repositories/rolls_repository.dart';

class ModifyRoll {
  final RollsRepository _rollsRepository;

  ModifyRoll(this._rollsRepository);

  Future<Roll> call(Roll roll, RollModifier modifier) async {
    await _rollsRepository.save(roll..addModifier(modifier));
    return roll;
  }
}
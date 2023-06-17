import '../../repositories/rolls_repository.dart';

class ClearRolls {
  final RollsRepository _rollsRepository;

  ClearRolls(this._rollsRepository);

  Future<void> call() => _rollsRepository.clear();
}
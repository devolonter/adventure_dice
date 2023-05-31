import '../../repositories/rolls_repository.dart';

class ClearRolls {
  final RollsRepository _rollRepository;

  ClearRolls(this._rollRepository);

  Future<void> call() => _rollRepository.clear();
}
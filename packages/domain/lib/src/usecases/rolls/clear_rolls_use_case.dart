import '../../repositories/rolls_repository.dart';

class ClearRollsUseCase {
  final RollsRepository _rollRepository;

  ClearRollsUseCase(this._rollRepository);

  Future<void> call() => _rollRepository.clear();
}
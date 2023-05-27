import '../../entities/roll.dart';
import '../../repositories/rolls_repository.dart';

class GetAllRollsUseCase {
  final RollsRepository _rollRepository;

  GetAllRollsUseCase(this._rollRepository);

  Future<List<Roll>> call() => _rollRepository.getAll();
}
import '../../entities/roll.dart';
import '../../repositories/rolls_repository.dart';

class GetAllRolls {
  final RollsRepository _rollRepository;

  GetAllRolls(this._rollRepository);

  Future<List<Roll>> call() => _rollRepository.getAll();
}
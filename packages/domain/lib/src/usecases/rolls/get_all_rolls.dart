import '../../entities/roll.dart';
import '../../repositories/rolls_repository.dart';

class GetAllRolls {
  final RollsRepository _rollsRepository;

  GetAllRolls(this._rollsRepository);

  Future<List<Roll>> call() => _rollsRepository.getAll();
}
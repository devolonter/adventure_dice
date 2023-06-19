import '../../../domain.dart';

class RerollDie {
  final RollsRepository _rollsRepository;

  RerollDie(this._rollsRepository);

  Future<List<Roll>> call(List<Roll> rolls) async {
    final List<Roll> result = rolls.map((roll) => roll.reroll()).toList();
    await _rollsRepository.save(result);
    return result;
  }
}
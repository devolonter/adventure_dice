import '../../../domain.dart';

class RerollDice {
  final RollsRepository _rollsRepository;

  RerollDice(this._rollsRepository);

  Future<List<Roll>> call(List<Roll> rolls) async {
    final List<Roll> result = rolls.map((roll) => roll.reroll()).toList();
    await _rollsRepository.save(result);
    return result;
  }
}
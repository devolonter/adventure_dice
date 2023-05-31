import '../../entities/dice.dart';
import '../../repositories/dice_repository.dart';

class GetAllDice {
  final DiceRepository _diceRepository;

  GetAllDice(this._diceRepository);

  Future<List<Dice>> call() => _diceRepository.getAll();
}
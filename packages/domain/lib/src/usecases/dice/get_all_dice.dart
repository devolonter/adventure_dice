import '../../entities/die.dart';
import '../../repositories/dice_repository.dart';

class GetAllDice {
  final DiceRepository _diceRepository;

  GetAllDice(this._diceRepository);

  Future<List<Die>> call() => _diceRepository.getAll();
}
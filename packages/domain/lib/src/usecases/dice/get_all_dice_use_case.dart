import '../../entities/dice.dart';
import '../../repositories/dice_repository.dart';

class GetAllDiceUseCase {
  final DiceRepository _diceRepository;

  GetAllDiceUseCase(this._diceRepository);

  Future<List<Dice>> call() => _diceRepository.getAll();
}
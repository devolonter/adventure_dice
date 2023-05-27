import '../entities/dice.dart';

abstract class DiceRepository {
  Future<List<Dice>> getAll();
}
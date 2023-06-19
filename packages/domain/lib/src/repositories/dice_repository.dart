import '../entities/die.dart';

abstract class DiceRepository {
  Future<List<Die>> getAll();
}
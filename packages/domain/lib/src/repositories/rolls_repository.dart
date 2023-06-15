import '../entities/roll.dart';

abstract class RollsRepository {
  Future<List<Roll>> getAll();
  Future<void> save(List<Roll> rolls);
  Future<void> clear();
}
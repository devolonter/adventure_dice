import '../entities/roll.dart';

abstract class RollsRepository {
  Future<List<Roll>> getAll();
  Future<void> save(Roll roll);
  Future<void> clear();
}
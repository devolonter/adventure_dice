import 'package:domain/domain.dart';

abstract class RollsDataSource {
  Future<List<Roll>> fetchAll();
  Future<void> save(List<Roll> rolls);
  Future<void> clear();
}
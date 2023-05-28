import 'package:domain/domain.dart';

abstract class RollsDataSource {
  Future<List<Roll>> fetchAll();
  Future<void> save(Roll roll);
  Future<void> clear();
}